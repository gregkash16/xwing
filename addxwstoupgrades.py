import json
import re
from pathlib import Path
from typing import List, Dict, Tuple, Optional

# =======================
# CONFIG
# =======================
JSONS_DIR = Path(r"C:\Users\gregk\Documents\GitHub\xwing\jsons")
UPGRADES_FILENAME = "upgrades.json"

COFFEE_PATH = Path(r"C:\Users\gregk\Documents\GitHub\xwing\coffeescripts\content\cards-common.coffee")
COFFEE_BACKUP_PATH = Path(r"C:\Users\gregk\Documents\GitHub\xwing\cards-common.backup.coffee")
COFFEE_OUTPUT_PATH = Path(r"C:\Users\gregk\Documents\GitHub\xwing\coffeescripts\content\cards-common.update.coffee")
LOG_PATH = Path(r"C:\Users\gregk\Documents\GitHub\xwing\xws_update_sync_log.txt")

# =======================
# REGEXES
# =======================
NAME_RE = re.compile(r'^\s*name:\s*["\']([^"\']+)["\']\s*$')
SLOT_COLON_RE = re.compile(r'^\s*slot\s*:\s*["\']([^"\']+)["\']\s*$')   # single 'slot:' typical for upgrades
XWS_PRESENT_RE = re.compile(r'^\s*xws_name\s*:\s*["\']([^"\']+)["\']\s*$')
ID_RE = re.compile(r'^(\s*)id\s*:\s*(\d+)\s*$')

# =======================
# HELPERS
# =======================
def get_indent(s: str) -> int:
    return len(s) - len(s.lstrip(" "))

def find_object_region(lines: List[str], anchor_idx: int) -> Tuple[int, int]:
    """
    Given the index of a field (e.g., name line) inside an object, find the region [start, end)
    of that Coffee object by indentation / braces heuristics.
    """
    indent = get_indent(lines[anchor_idx])
    n = len(lines)

    # Walk up to find the opening brace or boundary at same/lesser indentation
    start = anchor_idx
    k = anchor_idx
    while k >= 0:
        ln = lines[k]
        ln_indent = get_indent(ln)
        if "{" in ln and ln_indent <= indent:
            start = k
            break
        if ln.strip() and ln_indent < indent:
            start = k + 1
            break
        k -= 1

    # Walk down to find closing brace at same/lesser indentation
    end = anchor_idx + 1
    while end < n:
        ln = lines[end]
        ln_indent = get_indent(ln)
        if ln.strip().startswith("}") and ln_indent <= indent:
            end += 1
            break
        if ln.strip() and ln_indent < indent:
            break
        end += 1

    return start, end

def load_upgrades_json(jsons_dir: Path, filename: str, errors: List[str]) -> Dict[str, List[str]]:
    """
    Returns a mapping: proper_name -> [xws_id1, xws_id2, ...]
    Logs JSON errors (errors-only).
    """
    path = jsons_dir / filename
    name_to_xws: Dict[str, List[str]] = {}
    if not path.exists():
        errors.append(f"{filename} not found in {jsons_dir}")
        return name_to_xws

    try:
        data = json.loads(path.read_text(encoding="utf-8"))
    except Exception as e:
        errors.append(f"JSON parse error in {filename}: {e}")
        return name_to_xws

    if not isinstance(data, dict):
        errors.append(f"{filename} is not a dict at top-level")
        return name_to_xws

    for xws_key, obj in data.items():
        if not isinstance(obj, dict):
            continue
        name = obj.get("name")
        if not isinstance(name, str) or not name.strip():
            continue
        name_to_xws.setdefault(name, []).append(xws_key)

    return name_to_xws

# =======================
# MAIN
# =======================
def main():
    errors: List[str] = []

    # Load Coffee, create backup if needed
    coffee_text = COFFEE_PATH.read_text(encoding="utf-8")
    if not COFFEE_BACKUP_PATH.exists():
        COFFEE_BACKUP_PATH.write_text(coffee_text, encoding="utf-8")

    lines = coffee_text.splitlines(keepends=True)

    # Load upgrades.json into name -> [xws...]
    name_to_xws = load_upgrades_json(JSONS_DIR, UPGRADES_FILENAME, errors)

    # Pass 1: gather all Coffee upgrade objects (and count names to detect dupes)
    # Criteria for "upgrade object":
    #  - has a 'name:' field
    #  - has a 'slot:' field (singular)
    #  - does NOT already have an 'xws_name:' in its region
    upgrade_entries = []  # list of dicts: {name, name_idx, obj_start, obj_end, id_idx}
    coffee_name_counts: Dict[str, int] = {}

    i = 0
    n = len(lines)
    while i < n:
        m = NAME_RE.match(lines[i])
        if not m:
            i += 1
            continue

        name = m.group(1)
        obj_start, obj_end = find_object_region(lines, i)
        region = lines[obj_start:obj_end]

        # Must have slot:
        has_slot = any(SLOT_COLON_RE.match(ln) for ln in region)
        if not has_slot:
            i += 1
            continue

        # Skip if already has xws_name
        if any(XWS_PRESENT_RE.match(ln) for ln in region):
            i += 1
            continue

        # Find id line (required for insertion)
        id_idx_rel = None
        for ridx, ln in enumerate(region):
            if ID_RE.match(ln):
                id_idx_rel = ridx
                break

        # Record entry; id may be missing (we'll error on apply)
        upgrade_entries.append({
            "name": name,
            "name_idx": i,
            "obj_start": obj_start,
            "obj_end": obj_end,
            "id_idx_rel": id_idx_rel
        })
        coffee_name_counts[name] = coffee_name_counts.get(name, 0) + 1

        # advance past region
        i = obj_end

    # Pass 2: apply insertions where unambiguous
    # To keep indices stable while inserting, process from bottom to top.
    for entry in sorted(upgrade_entries, key=lambda e: e["obj_start"], reverse=True):
        name = entry["name"]
        obj_start = entry["obj_start"]
        obj_end = entry["obj_end"]
        id_idx_rel = entry["id_idx_rel"]

        # Multiple Coffee objects with same name? Log + skip all.
        if coffee_name_counts.get(name, 0) > 1:
            errors.append(f'UPGRADE "{name}": multiple Coffee objects with same name — skipped')
            continue

        # JSON mapping for this name
        xws_list_exact = name_to_xws.get(name, [])
        if not xws_list_exact:
            # case-insensitive fallback
            ci_key = None
            for k in name_to_xws.keys():
                if k.lower() == name.lower():
                    ci_key = k
                    break
            xws_list = name_to_xws.get(ci_key, [])
        else:
            xws_list = xws_list_exact

        if not xws_list:
            errors.append(f'UPGRADE "{name}": NOT FOUND in {UPGRADES_FILENAME}')
            continue
        if len(xws_list) > 1:
            errors.append(f'UPGRADE "{name}": multiple XWS candidates in {UPGRADES_FILENAME}: {xws_list} — skipped')
            continue

        xws = xws_list[0]

        # Must have id line to insert after
        if id_idx_rel is None:
            errors.append(f'UPGRADE "{name}": id key missing in Coffee — skipped')
            continue

        # Recompute region (indices still valid because we're processing bottom-up)
        region = lines[obj_start:obj_end]
        id_match = ID_RE.match(region[id_idx_rel])
        if not id_match:
            errors.append(f'UPGRADE "{name}": failed to re-locate id line — skipped')
            continue

        id_indent_str = id_match.group(1)
        insert_at = id_idx_rel + 1
        newline = "" if region[insert_at - 1].endswith("\n") else "\n"
        xws_line = f'{id_indent_str}xws_name: "{xws}"\n'

        # Insert xws_name after id line
        region[insert_at:insert_at] = [xws_line]

        # Write region back
        lines[obj_start:obj_end] = region

    # Write outputs and errors-only log
    COFFEE_OUTPUT_PATH.write_text("".join(lines), encoding="utf-8")
    LOG_PATH.write_text("\n".join(errors) + ("\n" if errors else ""), encoding="utf-8")

    print("✅ XWS insert complete (upgrades only).")
    print(f"Backup:  {COFFEE_BACKUP_PATH}")
    print(f"Output:  {COFFEE_OUTPUT_PATH}")
    print(f"Log:     {LOG_PATH} (errors only)")

if __name__ == "__main__":
    # Ensure backup exists before we write output
    if not COFFEE_BACKUP_PATH.exists():
        COFFEE_BACKUP_PATH.write_text(COFFEE_PATH.read_text(encoding="utf-8"), encoding="utf-8")
    main()

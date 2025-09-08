import json
import re
from pathlib import Path
from typing import List, Dict, Tuple, Optional

# =======================
# CONFIG (your paths)
# =======================
JSONS_DIR = Path(r"C:\Users\gregk\Documents\GitHub\xwing\jsons")
COFFEE_PATH = Path(r"C:\Users\gregk\Documents\GitHub\xwing\coffeescripts\content\cards-common.coffee")
COFFEE_BACKUP_PATH = Path(r"C:\Users\gregk\Documents\GitHub\xwing\cards-common.backup.coffee")
COFFEE_OUTPUT_PATH = Path(r"C:\Users\gregk\Documents\GitHub\xwing\coffeescripts\content\cards-common.update.coffee")
LOG_PATH = Path(r"C:\Users\gregk\Documents\GitHub\xwing\xws_update_sync_log.txt")

# =======================
# REGEXES
# =======================
XWS_RE = re.compile(r'^\s*xws_name:\s*["\']([^"\']+)["\']\s*$')
POINTSXWA_RE = re.compile(r'^(\s*pointsxwa:\s*)(\d+)(\s*)$')
LOADOUTXWA_RE = re.compile(r'^(\s*loadoutxwa:\s*)(\d+)(\s*)$')
SLOTSXWA_KEY_RE = re.compile(r'^\s*slotsxwa\s*:')

# =======================
# SLOT MAPPINGS (JSON → CoffeeScript)
# =======================
SLOT_MAP = {
    "Hardpoint": "HardpointShip",
    "Device": "Payload",
}
def map_slot(name: str) -> str:
    return SLOT_MAP.get(name, name)

# =======================
# JSON DISCOVERY
# =======================
def discover_json_pilots(jsons_dir: Path) -> Dict[str, Dict]:
    """
    Walk all *.json in jsons_dir and return:
      { xws_key: {"cost": int, "loadout": int, "slots": [str], "source": filename} }
    Accepts nested dicts/lists and looks for dicts containing a pilot keyed by xws key,
    following the structure exemplified by firstorder.json.
    """
    pilots: Dict[str, Dict] = {}

    def maybe_add(d: dict, source: str):
        # 'd' is a potential pilot dict; we need keys: cost, loadout, slots
        if not isinstance(d, dict):
            return
        # We don't know the xws key here; the xws key is actually the key that pointed to this dict.
        # So 'maybe_add' is used only when we call it with context that includes that key.
        pass

    def walk(node, source: str, parent_key: Optional[str] = None):
        # If node is a pilot dict reached via a key (the xws name), record it.
        if isinstance(node, dict):
            # Heuristic: if node looks like a pilot (has cost, loadout, slots), and parent_key is non-empty,
            # then parent_key is the xws key.
            if parent_key and "cost" in node and "loadout" in node and "slots" in node and isinstance(node["slots"], list):
                xws = parent_key
                slots = [map_slot(str(s)) for s in node.get("slots", [])]
                try:
                    cost = int(node.get("cost"))
                except Exception:
                    cost = None
                try:
                    loadout = int(node.get("loadout"))
                except Exception:
                    loadout = None
                if cost is not None and loadout is not None:
                    pilots[xws] = {
                        "cost": cost,
                        "loadout": loadout,
                        "slots": slots,
                        "source": source,
                    }
            # Continue walking nested values; pass key names as potential xws
            for k, v in node.items():
                walk(v, source, parent_key=k)
        elif isinstance(node, list):
            for v in node:
                walk(v, source, parent_key=None)

    for jf in sorted(jsons_dir.glob("*.json")):
        try:
            data = json.loads(jf.read_text(encoding="utf-8"))
            walk(data, jf.name, parent_key=None)
        except Exception as e:
            # Put parse errors into the pilots dict under a special key
            pilots.setdefault("__errors__", []).append(f"JSON parse error in {jf.name}: {e}")

    return pilots

# =======================
# COFFEE PARSING HELPERS
# =======================
def find_object_region(lines: List[str], xws_idx: int) -> Tuple[int, int]:
    """
    Given index of xws_name line, return (obj_start, obj_end_exclusive).
    Uses indentation + brace heuristics safe for CoffeeScript objects.
    """
    indent = len(lines[xws_idx]) - len(lines[xws_idx].lstrip(" "))
    n = len(lines)

    # Search upwards for the opening '{' at <= indent or until dedent
    obj_start = xws_idx
    k = xws_idx
    while k >= 0:
        ln = lines[k]
        ln_indent = len(ln) - len(ln.lstrip(" "))
        if "{" in ln and ln_indent <= indent:
            obj_start = k
            break
        if ln.strip() and ln_indent < indent:
            obj_start = k + 1
            break
        k -= 1

    # Search downwards for closing '}' at <= indent or dedent
    end = xws_idx + 1
    while end < n:
        ln = lines[end]
        ln_indent = len(ln) - len(ln.lstrip(" "))
        if ln.strip().startswith("}") and ln_indent <= indent:
            end += 1
            break
        if ln.strip() and ln_indent < indent:
            break
        end += 1

    return obj_start, end

def get_indent(s: str) -> int:
    return len(s) - len(s.lstrip(" "))

def parse_slotsxwa(region: List[str]) -> Tuple[Optional[int], Optional[int], List[str]]:
    """
    Find slotsxwa in region and parse its list of strings.
    Returns (slots_line_idx, arr_end_idx, slots_list).
    If not found, returns (None, None, []).
    """
    slots_line_idx = None
    # find key line
    for idx, ln in enumerate(region):
        if SLOTSXWA_KEY_RE.match(ln):
            slots_line_idx = idx
            break
    if slots_line_idx is None:
        return None, None, []

    # Determine array span (inline or multi-line)
    # Find '['
    i = slots_line_idx
    while i < len(region) and "[" not in region[i]:
        i += 1
    if i >= len(region):
        # malformed; treat no array content
        return slots_line_idx, slots_line_idx + 1, []

    # Find closing ']'
    j = i
    while j < len(region) and "]" not in region[j]:
        j += 1
    arr_end_idx = min(j + 1, len(region))

    # Extract between i and arr_end_idx
    body_lines = region[i:arr_end_idx]
    body = "".join(body_lines)

    # Pull out quoted strings
    # Accept both "A" and 'A', separated by commas or newlines
    items = re.findall(r'["\']([^"\']+)["\']', body)
    return slots_line_idx, arr_end_idx, items

def render_slots_block(key_indent: int, items: List[str]) -> List[str]:
    """
    Render a clean multi-line CoffeeScript slotsxwa block:
      <indent>slotsxwa: [
      <indent+4>"A"
      ...
      <indent>]
    """
    out = []
    out.append(" " * key_indent + "slotsxwa: [\n")
    for s in items:
        out.append(" " * (key_indent + 4) + f"\"{s}\"\n")
    out.append(" " * key_indent + "]\n")
    return out

# =======================
# APPLY UPDATES IN REGION
# =======================
def upsert_number_line(region: List[str], regex: re.Pattern, key: str, new_val: int,
                       anchors: List[str], xws_indent: int, changes: List[str], xws_name: str) -> List[str]:
    """
    Update existing numeric line (pointsxwa/loadoutxwa) or insert near anchors.
    Log changes when value differs or when inserting.
    """
    idx_match = None
    old_val = None
    for i, ln in enumerate(region):
        m = regex.match(ln)
        if m:
            idx_match = i
            old_val = int(m.group(2))
            break

    if idx_match is not None:
        if old_val != new_val:
            pre, _, post = regex.match(region[idx_match]).groups()
            # Preserve newline end
            newline = "" if region[idx_match].endswith("\n") else "\n"
            region[idx_match] = f"{pre}{new_val}{post}{newline}"
            changes.append(f'{xws_name}: {key} {old_val} -> {new_val}')
        # else no change
        return region

    # Insert if not present
    # pick indentation from nearest anchor, else from xws line
    insert_at = 1
    base_indent = xws_indent
    for i, ln in enumerate(region):
        if any(ln.lstrip().startswith(a) for a in anchors):
            base_indent = get_indent(ln)
            insert_at = i + 1
            break

    line = " " * base_indent + f"{key}: {new_val}\n"
    region.insert(insert_at, line)
    changes.append(f'{xws_name}: inserted {key} = {new_val}')
    return region

def upsert_slots_block(region: List[str], new_items: List[str], xws_indent: int,
                       anchors: List[str], changes: List[str], xws_name: str) -> List[str]:
    """
    Update/insert slotsxwa array. Compare normalized content; if different, rewrite as multi-line.
    """
    slots_line_idx, arr_end_idx, current_items = parse_slotsxwa(region)
    norm_cur = current_items[:]  # already strings
    norm_new = new_items[:]      # already mapped/strings

    if slots_line_idx is not None:
        if norm_cur != norm_new:
            key_indent = get_indent(region[slots_line_idx])
            new_block = render_slots_block(key_indent, norm_new)
            pre = region[:slots_line_idx]
            post = region[arr_end_idx:]
            region[:] = pre + new_block + post
            changes.append(f'{xws_name}: slotsxwa {norm_cur} -> {norm_new}')
        # else no change
        return region

    # Insert if not present
    insert_at = 1
    key_indent = xws_indent
    for i, ln in enumerate(region):
        if any(ln.lstrip().startswith(a) for a in anchors):
            key_indent = get_indent(ln)
            insert_at = i + 1
            break
    new_block = render_slots_block(key_indent, norm_new)
    region[insert_at:insert_at] = new_block
    changes.append(f'{xws_name}: inserted slotsxwa = {norm_new}')
    return region

# =======================
# MAIN SYNC
# =======================
def main():
    # Read coffee and make backup
    coffee_text = COFFEE_PATH.read_text(encoding="utf-8")
    if not COFFEE_BACKUP_PATH.exists():
        COFFEE_BACKUP_PATH.write_text(coffee_text, encoding="utf-8")

    lines = coffee_text.splitlines(keepends=True)

    json_map = discover_json_pilots(JSONS_DIR)

    changes: List[str] = []
    missing_in_coffee: List[str] = []
    if "__errors__" in json_map:
        changes.extend(json_map["__errors__"])

    # Anchors to keep new fields near other stats/upgrades
    anchors = ["upgrades:", "slots:", "loadoutxwa:", "pointsxwa:", "loadout:", "points:", "skill:", "initiative:", "id:", "ship:", "faction:"]

    i = 0
    n = len(lines)
    seen_xws = set()

    while i < n:
        line = lines[i]
        m = XWS_RE.match(line)
        if not m:
            i += 1
            continue

        xws = m.group(1)
        # Only sync if we have JSON for this xws
        if xws not in json_map:
            i += 1
            continue

        seen_xws.add(xws)
        target = json_map[xws]
        cost = target["cost"]
        loadout = target["loadout"]
        slots = target["slots"]

        obj_start, obj_end = find_object_region(lines, i)
        region = lines[obj_start:obj_end]
        xws_indent = get_indent(lines[i])

        # pointsxwa
        region = upsert_number_line(region, POINTSXWA_RE, "pointsxwa", cost, anchors, xws_indent, changes, xws)
        # loadoutxwa
        region = upsert_number_line(region, LOADOUTXWA_RE, "loadoutxwa", loadout, anchors, xws_indent, changes, xws)
        # slotsxwa
        region = upsert_slots_block(region, slots, xws_indent, anchors, changes, xws)

        # write region back
        lines[obj_start:obj_end] = region

        # advance past rewritten region
        delta = len(region)
        i = obj_start + delta
        n = len(lines)

    # Any JSON pilots not found in Coffee
    for k in json_map.keys():
        if k.startswith("__"):
            continue
        if k not in seen_xws:
            missing_in_coffee.append(k)

    # Append missing info to log
    if missing_in_coffee:
        for k in sorted(missing_in_coffee):
            changes.append(f'{k}: NOT FOUND in Coffee (present in JSON)')

    # Write outputs
    COFFEE_OUTPUT_PATH.write_text("".join(lines), encoding="utf-8")
    LOG_PATH.write_text("\n".join(changes) + ("\n" if changes else ""), encoding="utf-8")

    print("✅ Sync complete.")
    print(f"Backup:  {COFFEE_BACKUP_PATH}")
    print(f"Output:  {COFFEE_OUTPUT_PATH}")
    print(f"Log:     {LOG_PATH}")

if __name__ == "__main__":
    main()

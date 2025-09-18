import json
import re
from pathlib import Path
from typing import List, Dict, Tuple, Optional

# =======================
# CONFIG
# =======================
JSONS_DIR = Path(r"C:\Users\gregk\Documents\GitHub\xwing\jsons")
COFFEE_PATH = Path(r"C:\Users\gregk\Documents\GitHub\xwing\coffeescripts\content\cards-common.coffee")
COFFEE_BACKUP_PATH = Path(r"C:\Users\gregk\Documents\GitHub\xwing\cards-common.backup.coffee")
COFFEE_OUTPUT_PATH = Path(r"C:\Users\gregk\Documents\GitHub\xwing\coffeescripts\content\cards-common.update.coffee")
LOG_PATH = Path(r"C:\Users\gregk\Documents\GitHub\xwing\xws_update_sync_log.txt")

UPGRADES_FILENAME = "upgrades.json"  # special handling: cost -> pointsxwa only

# =======================
# REGEXES
# =======================
XWS_RE = re.compile(r'^\s*xws_name:\s*["\']([^"\']+)["\']\s*$')
POINTSXWA_RE = re.compile(r'^(\s*pointsxwa:\s*)(\d+)(\s*)$')
LOADOUTXWA_RE = re.compile(r'^(\s*loadoutxwa:\s*)(\d+)(\s*)$')
SLOTSXWA_KEY_RE = re.compile(r'^\s*slotsxwa\s*:')
SLOTS_KEY_RE = re.compile(r'^\s*slots\s*:')          # Coffee base slots (array)

# =======================
# SLOT MAPPINGS (JSON → Coffee)
# =======================
SLOT_MAP = {
    "Hardpoint": "HardpointShip",
    "Payload": "Device",
    "Force Power": "Force",
}
def map_slot(name: str) -> str:
    return SLOT_MAP.get(name, name)

# Preferred order (Coffee names)
COFFEE_SLOT_ORDER = [
    "Force", "Talent", "Astromech", "Crew", "Gunner", "Sensor", "Illicit", "Cannon",
    "Torpedo", "Missile", "HardpointShip", "Device", "Modification",
    "Configuration", "Title"
]
ORDER_INDEX = {name: i for i, name in enumerate(COFFEE_SLOT_ORDER)}

def sort_slots_coffee(slots: List[str]) -> List[str]:
    # Stable sort by our index; unknowns to end (alpha for determinism).
    # Duplicates are preserved because Python's sort is stable.
    return sorted(slots, key=lambda s: (ORDER_INDEX.get(s, 999), s))

# =======================
# JSON DISCOVERY (TOP-LEVEL ONLY)
# =======================
def discover_json_toplevel(jsons_dir: Path) -> Dict[str, Dict]:
    """
    Build a map from TOP-LEVEL (primary) JSON keys only:
      { xws_key: {"source": filename, "cost": Optional[int], "loadout": Optional[int], "slots": Optional[List[str]]} }

    We DO NOT walk nested dicts/lists. Only immediate keys of each JSON file are considered.
    """
    out: Dict[str, Dict] = {}
    for jf in sorted(jsons_dir.glob("*.json")):
        try:
            data = json.loads(jf.read_text(encoding="utf-8"))
        except Exception:
            # Per request, don't log parse errors—log only missing-in-coffee keys later.
            continue

        if not isinstance(data, dict):
            continue

        for k, v in data.items():
            if not isinstance(v, dict):
                continue
            rec = out.get(k, {"source": jf.name, "cost": None, "loadout": None, "slots": None})
            rec["source"] = jf.name  # last writer wins; useful for diagnosing duplicates across files

            # Extract fields if present
            if "cost" in v:
                try:
                    rec["cost"] = int(v["cost"])
                except Exception:
                    rec["cost"] = None
            if "loadout" in v:
                try:
                    rec["loadout"] = int(v["loadout"])
                except Exception:
                    rec["loadout"] = None
            if isinstance(v.get("slots"), list):
                rec["slots"] = [map_slot(str(s)) for s in v["slots"]]  # keep duplicates
            out[k] = rec

    return out

# =======================
# COFFEE HELPERS
# =======================
def find_object_region(lines: List[str], xws_idx: int) -> Tuple[int, int]:
    indent = len(lines[xws_idx]) - len(lines[xws_idx].lstrip(" "))
    n = len(lines)

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

def parse_array_block(region: List[str], key_re: re.Pattern) -> Tuple[Optional[int], Optional[int], List[str]]:
    """
    Returns (key_line_idx, arr_end_idx, items) for an array block by key regex.
    Keeps duplicates as they appear in the file.
    """
    key_idx = None
    for idx, ln in enumerate(region):
        if key_re.match(ln):
            key_idx = idx
            break
    if key_idx is None:
        return None, None, []

    i = key_idx
    while i < len(region) and "[" not in region[i]:
        i += 1
    if i >= len(region):
        return key_idx, key_idx + 1, []

    j = i
    while j < len(region) and "]" not in region[j]:
        j += 1
    arr_end_idx = min(j + 1, len(region))

    body = "".join(region[i:arr_end_idx])
    items = re.findall(r'["\']([^"\']+)["\']', body)  # preserve duplicates in order
    return key_idx, arr_end_idx, items

def render_array_block(key: str, key_indent: int, items: List[str]) -> List[str]:
    out = []
    out.append(" " * key_indent + f"{key}: [\n")
    for s in items:
        out.append(" " * (key_indent + 4) + f"\"{s}\"\n")
    out.append(" " * key_indent + "]\n")
    return out

# =======================
# REGION UPDATERS
# =======================
def upsert_number_line(region: List[str], regex: re.Pattern, key: str, new_val: int,
                       anchors: List[str], xws_indent: int) -> List[str]:
    idx_match = None
    for i, ln in enumerate(region):
        m = regex.match(ln)
        if m:
            idx_match = i
            break

    if idx_match is not None:
        pre, _, post = regex.match(region[idx_match]).groups()
        newline = "" if region[idx_match].endswith("\n") else "\n"
        region[idx_match] = f"{pre}{new_val}{post}{newline}"
        return region

    insert_at = 1
    base_indent = xws_indent
    for i, ln in enumerate(region):
        if any(ln.lstrip().startswith(a) for a in anchors):
            base_indent = get_indent(ln)
            insert_at = i + 1
            break

    line = " " * base_indent + f"{key}: {new_val}\n"
    region.insert(insert_at, line)
    return region

def upsert_slotsxwa(region: List[str], desired_items: List[str], xws_indent: int,
                    anchors: List[str]) -> List[str]:
    key_idx, arr_end_idx, current_items = parse_array_block(region, SLOTSXWA_KEY_RE)
    needs_rewrite = (current_items != desired_items)

    if key_idx is not None:
        if needs_rewrite:
            key_indent = get_indent(region[key_idx])
            new_block = render_array_block("slotsxwa", key_indent, desired_items)
            pre = region[:key_idx]
            post = region[arr_end_idx:]
            region[:] = pre + new_block + post
        return region

    # Insert if missing
    insert_at = 1
    key_indent = xws_indent
    for i, ln in enumerate(region):
        if any(ln.lstrip().startswith(a) for a in anchors):
            key_indent = get_indent(ln)
            insert_at = i + 1
            break
    new_block = render_array_block("slotsxwa", key_indent, desired_items)
    region[insert_at:insert_at] = new_block
    return region

# =======================
# SYNC (STRICT TOP-LEVEL xws_name MATCHING)
# =======================
def sync_from_json(lines: List[str], json_map: Dict[str, Dict]) -> List[str]:
    """
    For each Coffee object with xws_name:
      - If its JSON source is upgrades.json and cost is present → upsert pointsxwa only.
      - Else, if JSON has cost+loadout+slots(list) → upsert pointsxwa, loadoutxwa, slotsxwa
        (with HardpointShip and VersatileShip rule).
    Returns list of xws that were matched in Coffee (for logging purposes).
    """
    anchors_pilot = ["upgrades:", "slots:", "slotsxwa:", "loadoutxwa:", "pointsxwa:",
                     "loadout:", "points:", "skill:", "initiative:", "id:", "ship:", "faction:"]
    anchors_upgradeish = ["slot:", "slots:", "slotsxwa:", "pointsxwa:", "points:",
                          "charge:", "charges:", "id:", "restriction:", "limited:", "side:", "faction:", "name:", "ship:"]

    matched_xws = set()

    i = 0
    n = len(lines)
    while i < n:
        line = lines[i]
        m = XWS_RE.match(line)
        if not m:
            i += 1
            continue

        xws = m.group(1)
        data = json_map.get(xws)
        if data is None:
            # Strict: only log later (JSON key not found in Coffee is the only log we write)
            i += 1
            continue

        matched_xws.add(xws)

        obj_start, obj_end = find_object_region(lines, i)
        region = lines[obj_start:obj_end]
        xws_indent = get_indent(lines[i])

        source = (data.get("source") or "").lower()
        cost = data.get("cost", None)
        loadout = data.get("loadout", None)
        slots = data.get("slots", None)

        if source == UPGRADES_FILENAME.lower():
            # Upgrades: only cost -> pointsxwa
            if isinstance(cost, int):
                region = upsert_number_line(region, POINTSXWA_RE, "pointsxwa", cost, anchors_upgradeish, xws_indent)
                lines[obj_start:obj_end] = region
        else:
            # Pilot-like only if all fields present
            if isinstance(cost, int) and isinstance(loadout, int) and isinstance(slots, list):
                # 1) numeric fields
                region = upsert_number_line(region, POINTSXWA_RE, "pointsxwa", cost, anchors_pilot, xws_indent)
                region = upsert_number_line(region, LOADOUTXWA_RE, "loadoutxwa", loadout, anchors_pilot, xws_indent)

                # 2) check Coffee 'slots:' for HardpointShip & VersatileShip rule
                _slots_key_idx, _slots_arr_end_idx, coffee_slots_items = parse_array_block(region, SLOTS_KEY_RE)
                coffee_hp_count = sum(1 for s in coffee_slots_items if s == "HardpointShip")
                json_hp_count = sum(1 for s in slots if s == "HardpointShip")
                extra_hp_needed = max(0, coffee_hp_count - json_hp_count)
                coffee_has_versatile = any(s == "VersatileShip" for s in coffee_slots_items)

                desired_multiset = list(slots) + (["HardpointShip"] * extra_hp_needed)
                desired_ordered = sort_slots_coffee(desired_multiset)
                if coffee_has_versatile:
                    desired_ordered = [s for s in desired_ordered if s != "VersatileShip"] + ["VersatileShip"]

                # 3) write slotsxwa
                region = upsert_slotsxwa(region, desired_ordered, xws_indent, anchors_pilot)

                lines[obj_start:obj_end] = region

        # advance after rewritten region
        delta = len(region)
        i = obj_start + delta
        n = len(lines)

    return list(matched_xws)

# =======================
# MAIN
# =======================
def main():
    # Backup once
    coffee_text = COFFEE_PATH.read_text(encoding="utf-8")
    if not COFFEE_BACKUP_PATH.exists():
        COFFEE_BACKUP_PATH.write_text(coffee_text, encoding="utf-8")

    lines = coffee_text.splitlines(keepends=True)

    # Build top-level JSON map from ALL files (including upgrades.json)
    json_map = discover_json_toplevel(JSONS_DIR)

    # Sync strictly by xws_name ↔ top-level key
    matched = set(sync_from_json(lines, json_map))

    # Write outputs
    COFFEE_OUTPUT_PATH.write_text("".join(lines), encoding="utf-8")

    # Logging: ONLY keys from JSON that aren't found in Coffee
    missing = [k for k in json_map.keys() if k not in matched]
    # (optional) include source for clarity
    lines_log = [f"{k} ({json_map[k].get('source','')})" for k in sorted(missing)]
    LOG_PATH.write_text("\n".join(lines_log) + ("\n" if lines_log else ""), encoding="utf-8")

    print("✅ Sync complete.")
    print(f"Backup:  {COFFEE_BACKUP_PATH}")
    print(f"Output:  {COFFEE_OUTPUT_PATH}")
    print(f"Log:     {LOG_PATH} (JSON keys not found in Coffee)")

if __name__ == "__main__":
    main()

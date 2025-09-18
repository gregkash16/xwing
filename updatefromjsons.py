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

UPGRADES_FILENAME = "upgrades.json"  # special-case file

# =======================
# REGEXES
# =======================
XWS_RE = re.compile(r'^\s*xws_name:\s*["\']([^"\']+)["\']\s*$')
NAME_RE = re.compile(r'^\s*name:\s*["\']([^"\']+)["\']\s*$')
POINTSXWA_RE = re.compile(r'^(\s*pointsxwa:\s*)(\d+)(\s*)$')
LOADOUTXWA_RE = re.compile(r'^(\s*loadoutxwa:\s*)(\d+)(\s*)$')
SLOTSXWA_KEY_RE = re.compile(r'^\s*slotsxwa\s*:')
SLOTS_KEY_RE = re.compile(r'^\s*slots\s*:')          # Coffee base slots (array)
SLOT_COLON_RE = re.compile(r'^\s*slot\s*:')          # Coffee single 'slot:' (upgrades)
POINTS_KEY_RE = re.compile(r'^\s*points\s*:\s*(\d+)') # existing points (not required to exist)

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
# JSON DISCOVERY (PILOTS)
# =======================
def discover_json_pilots(jsons_dir: Path) -> Dict[str, Dict]:
    """
    Return:
      { xws_key: {"cost": int, "loadout": int, "slots": List[str], "source": filename} }
    Walk nested dicts/lists; use parent key of a dict with cost/loadout/slots as xws key.
    Skips UPGRADES_FILENAME.
    """
    pilots: Dict[str, Dict] = {}

    def walk(node, source: str, parent_key: Optional[str] = None):
        if isinstance(node, dict):
            if parent_key and "cost" in node and "loadout" in node and "slots" in node and isinstance(node["slots"], list):
                xws = parent_key
                mapped_slots = [map_slot(str(s)) for s in node.get("slots", [])]  # keep duplicates
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
                        "slots": mapped_slots,
                        "source": source,
                    }
            for k, v in node.items():
                walk(v, source, parent_key=k)
        elif isinstance(node, list):
            for v in node:
                walk(v, source, parent_key=None)

    for jf in sorted(jsons_dir.glob("*.json")):
        if jf.name.lower() == UPGRADES_FILENAME.lower():
            continue  # handled separately
        try:
            data = json.loads(jf.read_text(encoding="utf-8"))
            walk(data, jf.name, parent_key=None)
        except Exception as e:
            pilots.setdefault("__errors__", []).append(f"JSON parse error in {jf.name}: {e}")

    return pilots

# =======================
# JSON DISCOVERY (UPGRADES)
# =======================
def discover_json_upgrades(jsons_dir: Path) -> Dict[str, Dict]:
    """
    Returns:
      { proper_name: {"cost": int, "slots": [..], "key": original_key} }
    Only reads UPGRADES_FILENAME. Logs JSON errors inside a special __errors__ list key.
    """
    out: Dict[str, Dict] = {}
    path = jsons_dir / UPGRADES_FILENAME
    if not path.exists():
        out.setdefault("__errors__", []).append(f"{UPGRADES_FILENAME} not found in {jsons_dir}")
        return out
    try:
        data = json.loads(path.read_text(encoding="utf-8"))
        if isinstance(data, dict):
            for k, v in data.items():
                if not isinstance(v, dict):
                    continue
                name = v.get("name")
                cost = v.get("cost")
                slots = v.get("slots", [])
                if name and isinstance(cost, (int, float)):
                    try:
                        icost = int(cost)
                    except Exception:
                        continue
                    if name in out:
                        out.setdefault("__dupes__", []).append(
                            f"Duplicate upgrade name in JSON: {name} (keys: {out[name].get('key')} and {k})"
                        )
                    out[name] = {"cost": icost, "slots": slots, "key": k}
        else:
            out.setdefault("__errors__", []).append(f"{UPGRADES_FILENAME} is not a dict at top-level")
    except Exception as e:
        out.setdefault("__errors__", []).append(f"JSON parse error in {UPGRADES_FILENAME}: {e}")
    return out

# =======================
# COFFEE HELPERS
# =======================
def find_object_region(lines: List[str], xws_or_name_idx: int) -> Tuple[int, int]:
    indent = len(lines[xws_or_name_idx]) - len(lines[xws_or_name_idx].lstrip(" "))
    n = len(lines)

    obj_start = xws_or_name_idx
    k = xws_or_name_idx
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

    end = xws_or_name_idx + 1
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
# APPLY UPDATES IN REGION (generic; no success logging)
# =======================
def upsert_number_line(region: List[str], regex: re.Pattern, key: str, new_val: int,
                       anchors: List[str], xws_indent: int, _changes: List[str], _xws_or_name: str) -> List[str]:
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
                    anchors: List[str], _changes: List[str], _xws_name: str) -> List[str]:
    """
    Update/insert slotsxwa using an explicit desired_items list (including duplicates).
    No success logging; we only log errors elsewhere.
    """
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
# PASS 1: PILOT SYNC (xws_name-based)
# =======================
def sync_pilots(lines: List[str], json_map: Dict[str, Dict], errors: List[str]) -> None:
    anchors = ["upgrades:", "slots:", "slotsxwa:", "loadoutxwa:", "pointsxwa:",
               "loadout:", "points:", "skill:", "initiative:", "id:", "ship:", "faction:"]
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
        if xws not in json_map:
            i += 1
            continue

        seen_xws.add(xws)
        target = json_map[xws]
        cost = target["cost"]
        loadout = target["loadout"]
        mapped_from_json = list(target["slots"])  # keep duplicates exactly

        obj_start, obj_end = find_object_region(lines, i)
        region = lines[obj_start:obj_end]
        xws_indent = get_indent(lines[i])

        # 1) numeric fields
        region = upsert_number_line(region, POINTSXWA_RE, "pointsxwa", cost, anchors, xws_indent, errors, xws)
        region = upsert_number_line(region, LOADOUTXWA_RE, "loadoutxwa", loadout, anchors, xws_indent, errors, xws)

        # 2) check Coffee 'slots:' for HardpointShip and VersatileShip
        _slots_key_idx, _slots_arr_end_idx, coffee_slots_items = parse_array_block(region, SLOTS_KEY_RE)
        coffee_hp_count = sum(1 for s in coffee_slots_items if s == "HardpointShip")
        json_hp_count = sum(1 for s in mapped_from_json if s == "HardpointShip")
        extra_hp_needed = max(0, coffee_hp_count - json_hp_count)

        coffee_has_versatile = any(s == "VersatileShip" for s in coffee_slots_items)

        desired_multiset = list(mapped_from_json) + (["HardpointShip"] * extra_hp_needed)

        # 3) order the full MULTISET (duplicates preserved)
        desired_ordered = sort_slots_coffee(desired_multiset)

        # 4) VersatileShip rule: if Coffee 'slots:' contains VersatileShip,
        #    ensure slotsxwa has exactly one VersatileShip and it is the last element.
        if coffee_has_versatile:
            # remove any existing VersatileShip from the ordered list (if any) then append one at the end
            desired_ordered = [s for s in desired_ordered if s != "VersatileShip"] + ["VersatileShip"]

        # 5) write slotsxwa
        region = upsert_slotsxwa(region, desired_ordered, xws_indent, anchors, errors, xws)

        # write region back
        lines[obj_start:obj_end] = region

        # advance after rewritten region
        delta = len(region)
        i = obj_start + delta
        n = len(lines)

    # JSON pilots missing in Coffee (error log)
    for k in json_map.keys():
        if k.startswith("__"):
            continue
        if k not in seen_xws:
            errors.append(f'{k}: NOT FOUND in Coffee (present in JSON)')

# =======================
# PASS 2: UPGRADE SYNC (name-based from upgrades.json)
# =======================
def sync_upgrades(lines: List[str], upgrades_map: Dict[str, Dict], errors: List[str]) -> None:
    """
    For every Coffee object that:
      - has a 'name:' field,
      - does NOT contain an 'xws_name:' within its region (to avoid pilots),
      - does contain a 'slot:' (singular) line (typical for upgrades),
    match the name to upgrades.json and set pointsxwa to JSON 'cost'.
    Log only errors both ways.
    """
    anchors = ["slot:", "points:", "charge:", "charges:", "id:", "restriction:", "limited:", "side:", "faction:", "name:"]
    seen_in_json = set()

    upgrades_ci = {k.lower(): {"name": k, **v} for k, v in upgrades_map.items() if not k.startswith("__")}
    i = 0
    n = len(lines)

    def region_has_xws(region: List[str]) -> bool:
        return any(XWS_RE.match(ln) for ln in region)

    def region_has_slot_colon(region: List[str]) -> bool:
        return any(SLOT_COLON_RE.match(ln) for ln in region)

    while i < n:
        line = lines[i]
        m = NAME_RE.match(line)
        if not m:
            i += 1
            continue

        name = m.group(1)
        obj_start, obj_end = find_object_region(lines, i)
        region = lines[obj_start:obj_end]
        xws_indent = get_indent(lines[i])

        if region_has_xws(region):
            i += 1
            continue

        if not region_has_slot_colon(region):
            i += 1
            continue

        # Lookup in JSON map (exact match first, then case-insensitive)
        if name in upgrades_map:
            desired_cost = upgrades_map[name]["cost"]
            json_name_key = name
        else:
            ci = upgrades_ci.get(name.lower())
            if ci:
                desired_cost = ci["cost"]
                json_name_key = ci["name"]
            else:
                errors.append(f'UPGRADE "{name}": NOT FOUND in {UPGRADES_FILENAME}')
                i += 1
                continue

        # Upsert pointsxwa (no success logging)
        region = upsert_number_line(region, POINTSXWA_RE, "pointsxwa", int(desired_cost), anchors, xws_indent, errors, name)

        # Write region back
        lines[obj_start:obj_end] = region
        seen_in_json.add(json_name_key)

        # advance
        delta = len(region)
        i = obj_start + delta
        n = len(lines)

    # JSON upgrades not seen in Coffee (error log)
    for k in upgrades_map.keys():
        if k.startswith("__"):
            continue
        if k not in seen_in_json:
            errors.append(f'UPGRADE "{k}": present in {UPGRADES_FILENAME} but NOT FOUND in Coffee')

# =======================
# MAIN SYNC
# =======================
def main():
    # Backup once
    coffee_text = COFFEE_PATH.read_text(encoding="utf-8")
    if not COFFEE_BACKUP_PATH.exists():
        COFFEE_BACKUP_PATH.write_text(coffee_text, encoding="utf-8")

    lines = coffee_text.splitlines(keepends=True)

    # Discover pilots (all JSONs except upgrades.json)
    json_map = discover_json_pilots(JSONS_DIR)

    errors: List[str] = []
    if "__errors__" in json_map:
        errors.extend(json_map["__errors__"])

    # PASS 1: pilots by xws_name (with VersatileShip rule)
    sync_pilots(lines, json_map, errors)

    # PASS 2: upgrades by name from upgrades.json
    upgrades_map = discover_json_upgrades(JSONS_DIR)
    if "__errors__" in upgrades_map:
        errors.extend(upgrades_map["__errors__"])
    if "__dupes__" in upgrades_map:
        errors.extend(upgrades_map["__dupes__"])

    sync_upgrades(lines, upgrades_map, errors)

    # Write outputs
    COFFEE_OUTPUT_PATH.write_text("".join(lines), encoding="utf-8")
    LOG_PATH.write_text("\n".join(errors) + ("\n" if errors else ""), encoding="utf-8")

    print("✅ Sync complete.")
    print(f"Backup:  {COFFEE_BACKUP_PATH}")
    print(f"Output:  {COFFEE_OUTPUT_PATH}")
    print(f"Log:     {LOG_PATH} (errors only)")

if __name__ == "__main__":
    main()

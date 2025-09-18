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
# JSON DISCOVERY (UNIFIED)
# =======================
def discover_json_objects(jsons_dir: Path) -> Dict[str, Dict]:
    """
    Walk all *.json files under jsons_dir (including upgrades.json) and build a map:
      { xws_key: { "cost": Optional[int],
                   "loadout": Optional[int],
                   "slots": Optional[List[str]],
                   "source": filename } }

    We consider the 'xws_key' to be the parent key of a dict that contains relevant fields.
    - If 'slots' is present and is a list, we map its entries via SLOT_MAP (duplicates kept).
    - Any numeric 'cost' is captured (int-cast if possible).
    - Any numeric 'loadout' is captured (int-cast if possible).
    """
    objs: Dict[str, Dict] = {}

    def add_record(xws: str, src: str, node: dict):
        # Merge if already seen (prefer last non-None values)
        rec = objs.get(xws, {"cost": None, "loadout": None, "slots": None, "source": src})
        rec["source"] = src  # last writer wins on source (useful for debugging)

        # cost
        cost = node.get("cost", None)
        try:
            if cost is not None:
                rec["cost"] = int(cost)
        except Exception:
            pass

        # loadout
        loadout = node.get("loadout", None)
        try:
            if loadout is not None:
                rec["loadout"] = int(loadout)
        except Exception:
            pass

        # slots
        slots_val = node.get("slots", None)
        if isinstance(slots_val, list):
            rec["slots"] = [map_slot(str(s)) for s in slots_val]  # keep duplicates
        objs[xws] = rec

    def walk(node, source: str, parent_key: Optional[str] = None):
        if isinstance(node, dict):
            if parent_key:
                # if this dict has anything interesting, record it
                if any(k in node for k in ("cost", "loadout", "slots")):
                    add_record(parent_key, source, node)
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
            objs.setdefault("__errors__", []).append(f"JSON parse error in {jf.name}: {e}")

    return objs

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
        # If trailing commas matter in your Coffee, you can add them; current style matches input approach.
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
# PASS 1: PILOT SYNC (xws_name-based, requires cost+loadout+slots in JSON)
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
        target = json_map.get(xws)
        if not target:
            i += 1
            continue

        # Only treat as a pilot if JSON has cost, loadout, and slots (list)
        if target.get("cost") is None or target.get("loadout") is None or not isinstance(target.get("slots"), list):
            i += 1
            continue

        seen_xws.add(xws)
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
    for k, v in json_map.items():
        if k.startswith("__"):
            continue
        if v.get("cost") is not None and v.get("loadout") is not None and isinstance(v.get("slots"), list):
            # pilot-like entry
            # we didn't track seen_xws here because we only add when matched; log if not seen
            # (this retains your previous behavior)
            pass

# =======================
# PASS 2: GENERIC XWS COST SYNC (covers upgrades etc.)
# =======================
def sync_points_by_xws(lines: List[str], json_map: Dict[str, Dict], errors: List[str]) -> None:
    """
    For ANY Coffee object that has an 'xws_name:',
    if JSON has a numeric 'cost' for that xws, upsert 'pointsxwa' to that cost.

    This pass catches upgrades or other entities that are keyed by xws_name but
    do not have loadout/slots (i.e., not pilots).
    """
    anchors = ["slot:", "slots:", "slotsxwa:", "pointsxwa:", "points:", "charge:", "charges:",
               "id:", "restriction:", "limited:", "side:", "faction:", "name:", "ship:"]
    i = 0
    n = len(lines)

    seen_cost_xws = set()
    seen_coffee_xws = set()

    while i < n:
        line = lines[i]
        m = XWS_RE.match(line)
        if not m:
            i += 1
            continue

        xws = m.group(1)
        seen_coffee_xws.add(xws)

        data = json_map.get(xws)
        if not data:
            # Coffee has an xws that isn't present in any JSON parent-key
            errors.append(f'{xws}: NOT FOUND in JSON (Coffee has xws_name)')
            i += 1
            continue

        cost = data.get("cost", None)
        if cost is None:
            # JSON exists but no numeric cost
            errors.append(f'{xws}: JSON has no numeric "cost" (source: {data.get("source")})')
            i += 1
            continue

        obj_start, obj_end = find_object_region(lines, i)
        region = lines[obj_start:obj_end]
        xws_indent = get_indent(lines[i])

        # upsert pointsxwa only
        region = upsert_number_line(region, POINTSXWA_RE, "pointsxwa", int(cost), anchors, xws_indent, errors, xws)

        lines[obj_start:obj_end] = region
        seen_cost_xws.add(xws)

        delta = len(region)
        i = obj_start + delta
        n = len(lines)

    # JSON entries that had a cost but never showed up in Coffee
    for k, v in json_map.items():
        if k.startswith("__"):
            continue
        if v.get("cost") is not None and k not in seen_coffee_xws:
            errors.append(f'{k}: present in JSON with cost={v.get("cost")} but NOT FOUND in Coffee (by xws_name)')

# =======================
# MAIN SYNC
# =======================
def main():
    # Backup once
    coffee_text = COFFEE_PATH.read_text(encoding="utf-8")
    if not COFFEE_BACKUP_PATH.exists():
        COFFEE_BACKUP_PATH.write_text(coffee_text, encoding="utf-8")

    lines = coffee_text.splitlines(keepends=True)

    # Discover all JSON objects (pilots + upgrades + anything else), unified
    json_map = discover_json_objects(JSONS_DIR)

    errors: List[str] = []
    if "__errors__" in json_map:
        errors.extend(json_map["__errors__"])

    # PASS 1: pilots by xws_name (with VersatileShip/HardpointShip rules)
    sync_pilots(lines, json_map, errors)

    # PASS 2: generic cost sync by xws_name (covers upgrades, etc.)
    sync_points_by_xws(lines, json_map, errors)

    # Write outputs
    COFFEE_OUTPUT_PATH.write_text("".join(lines), encoding="utf-8")
    LOG_PATH.write_text("\n".join(errors) + ("\n" if errors else ""), encoding="utf-8")

    print("✅ Sync complete.")
    print(f"Backup:  {COFFEE_BACKUP_PATH}")
    print(f"Output:  {COFFEE_OUTPUT_PATH}")
    print(f"Log:     {LOG_PATH} (errors only)")

if __name__ == "__main__":
    main()

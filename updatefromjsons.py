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
POINTSXWA_RE = re.compile(r'^(\s*pointsxwa:\s*)(\d+)(\s*)$')
LOADOUTXWA_RE = re.compile(r'^(\s*loadoutxwa:\s*)(\d+)(\s*)$')
SLOTSXWA_KEY_RE = re.compile(r'^\s*slotsxwa\s*:')
SLOTS_KEY_RE = re.compile(r'^\s*slots\s*:')          # Coffee base slots

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
# JSON DISCOVERY
# =======================
def discover_json_pilots(jsons_dir: Path) -> Dict[str, Dict]:
    """
    Return:
      { xws_key: {"cost": int, "loadout": int, "slots": List[str], "source": filename} }
    Walk nested dicts/lists; use parent key of a dict with cost/loadout/slots as xws key.
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
        try:
            data = json.loads(jf.read_text(encoding="utf-8"))
            walk(data, jf.name, parent_key=None)
        except Exception as e:
            pilots.setdefault("__errors__", []).append(f"JSON parse error in {jf.name}: {e}")

    return pilots

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
    # capture duplicates in order
    items = re.findall(r'["\']([^"\']+)["\']', body)
    return key_idx, arr_end_idx, items

def render_array_block(key: str, key_indent: int, items: List[str]) -> List[str]:
    out = []
    out.append(" " * key_indent + f"{key}: [\n")
    for s in items:
        out.append(" " * (key_indent + 4) + f"\"{s}\"\n")
    out.append(" " * key_indent + "]\n")
    return out

# =======================
# APPLY UPDATES IN REGION
# =======================
def upsert_number_line(region: List[str], regex: re.Pattern, key: str, new_val: int,
                       anchors: List[str], xws_indent: int, changes: List[str], xws_name: str) -> List[str]:
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
            newline = "" if region[idx_match].endswith("\n") else "\n"
            region[idx_match] = f"{pre}{new_val}{post}{newline}"
            changes.append(f'{xws_name}: {key} {old_val} -> {new_val}')
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
    changes.append(f'{xws_name}: inserted {key} = {new_val}')
    return region

def upsert_slotsxwa(region: List[str], desired_items: List[str], xws_indent: int,
                    anchors: List[str], changes: List[str], xws_name: str) -> List[str]:
    """
    Update/insert slotsxwa using an explicit desired_items list (Coffee names, ordered).
    Rewrite if current items != desired_items (exact list/order, including duplicates).
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
            changes.append(f'{xws_name}: slotsxwa {current_items} -> {desired_items}')
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
    changes.append(f'{xws_name}: inserted slotsxwa = {desired_items}')
    return region

# =======================
# MAIN SYNC
# =======================
def main():
    # Backup once
    coffee_text = COFFEE_PATH.read_text(encoding="utf-8")
    if not COFFEE_BACKUP_PATH.exists():
        COFFEE_BACKUP_PATH.write_text(coffee_text, encoding="utf-8")

    lines = coffee_text.splitlines(keepends=True)
    json_map = discover_json_pilots(JSONS_DIR)

    changes: List[str] = []
    missing_in_coffee: List[str] = []
    if "__errors__" in json_map:
        changes.extend(json_map["__errors__"])

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
        region = upsert_number_line(region, POINTSXWA_RE, "pointsxwa", cost, anchors, xws_indent, changes, xws)
        region = upsert_number_line(region, LOADOUTXWA_RE, "loadoutxwa", loadout, anchors, xws_indent, changes, xws)

        # 2) count HardpointShip in Coffee 'slots:' and ensure slotsxwa has at least that many
        _slots_key_idx, _slots_arr_end_idx, coffee_slots_items = parse_array_block(region, SLOTS_KEY_RE)
        coffee_hp_count = sum(1 for s in coffee_slots_items if s == "HardpointShip")
        json_hp_count = sum(1 for s in mapped_from_json if s == "HardpointShip")
        extra_hp_needed = max(0, coffee_hp_count - json_hp_count)

        desired_multiset = list(mapped_from_json) + (["HardpointShip"] * extra_hp_needed)

        # 3) order the full MULTISET (duplicates preserved)
        desired_ordered = sort_slots_coffee(desired_multiset)

        # 4) write slotsxwa
        region = upsert_slotsxwa(region, desired_ordered, xws_indent, anchors, changes, xws)

        # write region back
        lines[obj_start:obj_end] = region

        # advance after rewritten region
        delta = len(region)
        i = obj_start + delta
        n = len(lines)

    # JSON pilots missing in Coffee
    for k in json_map.keys():
        if k.startswith("__"):
            continue
        if k not in seen_xws:
            missing_in_coffee.append(k)
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

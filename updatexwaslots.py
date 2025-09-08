import json
import re
from pathlib import Path

# ==== CONFIG ====
jsons_folder = Path(r"C:\Users\gregk\Documents\GitHub\xwing\jsons")
coffee_file_path = Path(r"C:\Users\gregk\Documents\GitHub\xwing\coffeescripts\content\cards-common.coffee")
output_file_path = Path(r"C:\Users\gregk\Documents\GitHub\xwing\coffeescripts\content\cards-common.updated.slots.coffee")
backup_file_path = Path(r"C:\Users\gregk\Documents\GitHub\xwing\coffeescripts\content\cards-common.backup.coffee")
log_file_path = Path(r"C:\Users\gregk\Documents\GitHub\xwing\xws_update_slots_log.txt")

# ==== Regexes / Helpers ====
XWS_RE = re.compile(r'^\s*xws_name:\s*["\']([^"\']+)["\']\s*$', re.UNICODE)
SLOTSXWA_KEY_RE = re.compile(r'^\s*slotsxwa\s*:', re.UNICODE)

def discover_json_pilots_with_slots(folder):
    """
    Walk all *.json and return {xws_key: {"slots": [..], "source": filename}}
    Accepts shapes:
      - { ship_type: { xws_key: {... "slots": [...] } } }
      - [ {... "xws" or "xws_name": "...", "slots": [...] }, ... ]
      - Arbitrary nesting; we scan dicts for ('xws'|'xws_name') and 'slots' (list[str]).
    """
    found = {}

    def maybe_add(d, source):
        xws = d.get("xws") or d.get("xws_name")
        slots = d.get("slots")
        if xws and isinstance(slots, list):
            # normalize to strings
            norm = [str(s) for s in slots]
            found[xws] = {"slots": norm, "source": source}

    def walk(node, source):
        if isinstance(node, dict):
            maybe_add(node, source)
            for v in node.values():
                walk(v, source)
        elif isinstance(node, list):
            for v in node:
                walk(v, source)

    for jf in folder.glob("*.json"):
        try:
            data = json.loads(jf.read_text(encoding="utf-8"))
            walk(data, jf.name)
        except Exception as e:
            found.setdefault("__errors__", []).append(f"JSON parse error in {jf.name}: {e}")

    return found

def find_object_region(lines, start_idx):
    """
    Given the index of an xws_name line, return (obj_start, obj_end_exclusive)
    using indentation-based region (safe for CoffeeScript).
    """
    indent = len(lines[start_idx]) - len(lines[start_idx].lstrip(" "))
    n = len(lines)

    # Scan upwards looking for a '{' at <= indent (optional heuristic)
    obj_start = start_idx
    k = start_idx
    while k >= 0:
        if '{' in lines[k] and (len(lines[k]) - len(lines[k].lstrip(" "))) <= indent:
            obj_start = k
            break
        # stop if dedent past current indent
        if lines[k].strip() and (len(lines[k]) - len(lines[k].lstrip(" "))) < indent:
            obj_start = k + 1
            break
        k -= 1

    # Scan down until a dedent or a '}' at <= indent
    end = start_idx + 1
    while end < n:
        ln = lines[end]
        ln_indent = len(ln) - len(ln.lstrip(" "))
        if ln.strip().startswith('}') and ln_indent <= indent:
            end += 1
            break
        if ln.strip() and ln_indent < indent:
            break
        end += 1

    return obj_start, end

def replace_slots_array_in_region(lines, obj_start, obj_end, new_slots):
    """
    In [obj_start:obj_end), replace or insert:
        slotsxwa: [
            "slot1"
            "slot2"
        ]
    Preserves indentation and nearby formatting.
    Returns (lines_modified, did_insert_block: bool)
    """
    region = lines[obj_start:obj_end]
    # Find if slotsxwa exists; also capture its array span if multi-line
    slots_line_idx = None
    arr_start_idx = None
    arr_end_idx = None

    # First pass: find the line with slotsxwa:
    for idx, ln in enumerate(region):
        if SLOTSXWA_KEY_RE.match(ln):
            slots_line_idx = idx
            break

    # Helper to compute base indentation for array items
    def base_indent_from(line):
        return len(line) - len(line.lstrip(" "))

    # If exists, detect array bounds (support inline or multi-line)
    if slots_line_idx is not None:
        line = region[slots_line_idx]
        base_indent = base_indent_from(line)

        # If inline like: slotsxwa: ["A","B"]
        if '[' in line and ']' in line:
            arr_start_idx = slots_line_idx
            arr_end_idx = slots_line_idx + 1
            # We will rewrite to multi-line style
        else:
            # Find '[' start on same or next lines
            i = slots_line_idx
            found_open = False
            while i < len(region):
                if '[' in region[i]:
                    arr_start_idx = i
                    found_open = True
                    break
                i += 1
            if not found_open:
                # If malformed, treat the next line as start
                arr_start_idx = min(slots_line_idx + 1, len(region) - 1)

            # Find matching closing ']' at <= base_indent+some
            j = arr_start_idx
            while j < len(region):
                if ']' in region[j]:
                    arr_end_idx = j + 1
                    break
                j += 1
            if arr_end_idx is None:
                arr_end_idx = len(region)

        # Build new multi-line array keeping indentation
        # Indent scheme:
        # slotsxwa: [
        #     "A"
        #     "B"
        # ]
        key_indent = base_indent
        item_indent = key_indent + 4

        new_arr_lines = []
        # Ensure "slotsxwa: [" line (rewrite regardless of previous inline)
        # Keep any trailing comment after 'slotsxwa:' if present
        # Split off after 'slotsxwa:' token
        # We reconstruct cleanly to avoid dangling commas inconsistencies
        new_arr_lines.append(" " * key_indent + "slotsxwa: [\n")
        for s in new_slots:
            new_arr_lines.append(" " * item_indent + f"\"{s}\"\n")
        new_arr_lines.append(" " * key_indent + "]\n")

        # Replace previous array span with our new block
        pre = region[:slots_line_idx]
        post = region[arr_end_idx:]
        region = pre + new_arr_lines + post

    else:
        # Need to INSERT the whole slotsxwa block.
        # Choose an anchor to place after (near other loadout/upgrade fields).
        anchors = ["upgrades:", "slots:", "loadoutxwa:", "pointsxwa:", "loadout:", "points:", "skill:", "initiative:", "id:", "ship:", "faction:"]
        insert_at = 1  # default just after the opening line of the object region
        base_indent = None

        # Determine base indentation from an anchor if available; else from first non-empty line
        for idx, ln in enumerate(region):
            if any(ln.lstrip().startswith(a) for a in anchors):
                base_indent = len(ln) - len(ln.lstrip(" "))
                insert_at = idx + 1
                break
        if base_indent is None:
            # Fallback: use indentation of xws_name line or opening line
            for idx, ln in enumerate(region):
                if XWS_RE.match(ln):
                    base_indent = len(ln) - len(ln.lstrip(" "))
                    insert_at = idx + 1
                    break
        if base_indent is None:
            base_indent = 4  # very safe default

        key_indent = base_indent
        item_indent = key_indent + 4

        new_block = []
        new_block.append(" " * key_indent + "slotsxwa: [\n")
        for s in new_slots:
            new_block.append(" " * item_indent + f"\"{s}\"\n")
        new_block.append(" " * key_indent + "]\n")

        region = region[:insert_at] + new_block + region[insert_at:]

    # Write back region
    lines[obj_start:obj_end] = region
    return lines

def update_coffee_with_slots(lines, json_map):
    """
    For each xws_name in CoffeeScript, if JSON has slots, update/insert slotsxwa array.
    """
    updated = []
    missing_in_coffee = []
    seen = set()

    i = 0
    n = len(lines)
    while i < n:
        line = lines[i]
        m = XWS_RE.match(line)
        if not m:
            i += 1
            continue

        xws_key = m.group(1)
        if xws_key not in json_map:
            i += 1
            continue

        seen.add(xws_key)
        slots = json_map[xws_key]["slots"]

        obj_start, obj_end = find_object_region(lines, i)
        lines = replace_slots_array_in_region(lines, obj_start, obj_end, slots)
        updated.append(xws_key)

        # Continue after the region we just rewrote
        # Recompute delta after rewrite
        delta = (obj_end - obj_start)
        i = obj_start + delta
        n = len(lines)

    # Log JSON pilots not found in Coffee
    for xws_key in json_map.keys():
        if xws_key.startswith("__"):
            continue
        if xws_key not in seen:
            missing_in_coffee.append(xws_key)

    return lines, updated, missing_in_coffee

# ==== Run ====
coffee_text = coffee_file_path.read_text(encoding="utf-8")
lines = coffee_text.splitlines(keepends=True)

# Backup original once
if not backup_file_path.exists():
    backup_file_path.write_text(coffee_text, encoding="utf-8")

json_map = discover_json_pilots_with_slots(jsons_folder)

new_lines, updated_keys, missing_keys = update_coffee_with_slots(lines, json_map)

output_file_path.write_text("".join(new_lines), encoding="utf-8")

log_lines = []
if "__errors__" in json_map:
    log_lines.extend(json_map["__errors__"])
log_lines.append(f"Updated pilots (slotsxwa): {len(updated_keys)}")
if updated_keys:
    log_lines.append(", ".join(sorted(updated_keys)))
log_lines.append(f"Missing in Coffee: {len(missing_keys)}")
if missing_keys:
    log_lines.append(", ".join(sorted(missing_keys)))

log_file_path.write_text("\n".join(log_lines), encoding="utf-8")

print("✅ slotsxwa update complete.")
print(f"Output written to: {output_file_path}")
print(f"Backup saved at:   {backup_file_path}")
print(f"Log written to:    {log_file_path}")

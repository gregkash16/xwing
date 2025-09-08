import json
import re
from pathlib import Path

# ==== CONFIG ====
jsons_folder = Path(r"C:\Users\gregk\Documents\GitHub\xwing\jsons")
coffee_file_path = Path(r"C:\Users\gregk\Documents\GitHub\xwing\coffeescripts\content\cards-common.coffee")
output_file_path = Path(r"C:\Users\gregk\Documents\GitHub\xwing\coffeescripts\content\cards-common.updated.coffee")
backup_file_path = Path(r"C:\Users\gregk\Documents\GitHub\xwing\coffeescripts\content\cards-common.backup.coffee")
log_file_path = Path(r"C:\Users\gregk\Documents\GitHub\xwing\xws_update_log.txt")

# ==== Helpers ====
XWS_RE = re.compile(r'^\s*xws_name:\s*["\']([^"\']+)["\']\s*$')
POINTSXWA_RE = re.compile(r'^(\s*pointsxwa:\s*)(\d+)(\s*)$')
LOADOUTXWA_RE = re.compile(r'^(\s*loadoutxwa:\s*)(\d+)(\s*)$')

def discover_json_pilots(folder):
    """
    Walks every *.json and returns {xws_key: {"cost": int, "loadout": int, "source": filename}}
    Accepts a few common shapes:
      - { ship_type: { xws_key: {cost, loadout, ...}, ...}, ...}
      - [{...pilot...}, ...] where entries contain xws/xws_name and cost/loadout
      - arbitrarily nested dicts/lists; we scan for dicts with ('xws' or 'xws_name') and ('cost','loadout')
    """
    found = {}
    def maybe_add(d, source):
        xws = d.get("xws") or d.get("xws_name")
        cost = d.get("cost")
        loadout = d.get("loadout")
        if xws is not None and isinstance(cost, int) and isinstance(loadout, int):
            found[xws] = {"cost": cost, "loadout": loadout, "source": source}

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
            # skip malformed json but note in found using a special key
            found.setdefault("__errors__", []).append(f"JSON parse error in {jf.name}: {e}")
    return found

def update_coffee_lines(lines, json_map):
    """
    Goes through the CoffeeScript file, finds pilot objects by xws_name, and
    edits/creates pointsxwa and loadoutxwa lines within that object only.
    """
    updated = []
    missing_in_coffee = []
    inserted_counters = {"pointsxwa": 0, "loadoutxwa": 0}
    # Track which xws keys we actually matched
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
        # Only proceed if this xws exists in the JSON map
        if xws_key not in json_map:
            i += 1
            continue

        seen.add(xws_key)
        target_cost = json_map[xws_key]["cost"]
        target_loadout = json_map[xws_key]["loadout"]

        # Determine pilot object indentation from the xws_name line
        indent = len(line) - len(line.lstrip(" "))
        # Assume the object region continues until we hit a line with less indent than the object's opening "{"
        # We’ll find the top of the object by scanning upwards for a line that starts with '{' at <= indent
        # and then scan downwards until its matching '}' at same or less indentation.
        # If that’s too brittle, fall back to indent-based region.

        # Fallback: indent-based region scan (practical and safe in CoffeeScript)
        start = i
        j = i + 1
        # Move up to the closest '{' above (optional; not strictly needed)
        k = i
        while k >= 0 and '{' not in lines[k]:
            k -= 1
        # Downward scan until dedent to less indentation or a line with just '}' at <= indent
        end = j
        while end < n:
            ln = lines[end]
            if ln.strip().startswith('}') and (len(ln) - len(ln.lstrip(" ")) <= indent):
                end += 1
                break
            if (len(ln) - len(ln.lstrip(" "))) < indent and ln.strip():
                break
            end += 1

        # Now within [start, end), update/insert the fields
        region = lines[start:end]
        # Find existing lines
        px_idx = None
        lx_idx = None
        for idx, ln in enumerate(region):
            if POINTSXWA_RE.match(ln):
                px_idx = idx
            elif LOADOUTXWA_RE.match(ln):
                lx_idx = idx

        # Compose new lines using region indentation where the keys already live, else use xws indent + 4 spaces
        def make_line(key, value, base_indent):
            return " " * base_indent + f"{key}: {value}\n"

        # Preferred insertion anchor order
        anchors = ["points:", "loadout:", "skill:", "initiative:", "id:", "ship:", "faction:"]

        # Update or insert pointsxwa
        if px_idx is not None:
            pre, _, post = POINTSXWA_RE.match(region[px_idx]).groups()
            region[px_idx] = f"{pre}{target_cost}{post}\n" if not region[px_idx].endswith("\n") else f"{pre}{target_cost}{post}"
        else:
            # insert
            base_indent = indent
            inserted_at = None
            for idx, ln in enumerate(region):
                if any(ln.lstrip().startswith(a) for a in anchors):
                    base_indent = len(ln) - len(ln.lstrip(" "))
                    inserted_at = idx + 1
                    break
            if inserted_at is None:
                inserted_at = 1
            region.insert(inserted_at, make_line("pointsxwa", target_cost, base_indent))
            inserted_counters["pointsxwa"] += 1

        # Update or insert loadoutxwa
        if lx_idx is not None:
            pre, _, post = LOADOUTXWA_RE.match(region[lx_idx]).groups()
            region[lx_idx] = f"{pre}{target_loadout}{post}\n" if not region[lx_idx].endswith("\n") else f"{pre}{target_loadout}{post}"
        else:
            base_indent = indent
            inserted_at = None
            # place after pointsxwa if we just inserted/updated it
            for idx, ln in enumerate(region):
                if ln.lstrip().startswith("pointsxwa:"):
                    base_indent = len(ln) - len(ln.lstrip(" "))
                    inserted_at = idx + 1
                    break
            if inserted_at is None:
                for idx, ln in enumerate(region):
                    if any(ln.lstrip().startswith(a) for a in anchors):
                        base_indent = len(ln) - len(ln.lstrip(" "))
                        inserted_at = idx + 1
                        break
            if inserted_at is None:
                inserted_at = 1
            region.insert(inserted_at, make_line("loadoutxwa", target_loadout, base_indent))
            inserted_counters["loadoutxwa"] += 1

        # Write region back
        lines[start:end] = region
        updated.append(xws_key)
        # Continue after the region
        i = start + len(region)

    # Anything found in JSON but never seen in Coffee gets logged
    for xws_key in json_map.keys():
        if xws_key.startswith("__"):
            continue
        if xws_key not in seen:
            missing_in_coffee.append(xws_key)

    return lines, updated, missing_in_coffee, inserted_counters

# ==== Run ====
coffee_text = coffee_file_path.read_text(encoding="utf-8")
lines = coffee_text.splitlines(keepends=True)

# Backup original (once)
if not backup_file_path.exists():
    backup_file_path.write_text(coffee_text, encoding="utf-8")

json_map = discover_json_pilots(jsons_folder)
new_lines, updated_keys, missing_keys, inserted_counts = update_coffee_lines(lines, json_map)

output_file_path.write_text("".join(new_lines), encoding="utf-8")

log_lines = []
if "__errors__" in json_map:
    log_lines.extend(json_map["__errors__"])
log_lines.append(f"Updated pilots: {len(updated_keys)}")
if updated_keys:
    log_lines.append(", ".join(sorted(updated_keys)))
log_lines.append(f"Missing in Coffee: {len(missing_keys)}")
if missing_keys:
    log_lines.append(", ".join(sorted(missing_keys)))
log_lines.append(f"Inserted lines — pointsxwa: {inserted_counts['pointsxwa']}, loadoutxwa: {inserted_counts['loadoutxwa']}")

log_file_path.write_text("\n".join(log_lines), encoding="utf-8")

print("✅ Update complete.")
print(f"Output written to: {output_file_path}")
print(f"Backup saved at:   {backup_file_path}")
print(f"Log written to:    {log_file_path}")

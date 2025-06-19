import os
import json
import re
from pathlib import Path

# Path to the JSON folder and CoffeeScript input
JSON_FOLDER = r"C:\\Users\\gregk\\Documents\\GitHub\\xwa-points\\revisions\\50P"
JSON_FILES = [
    "firstorder.json",
    "galacticempire.json",
    "galacticrepublic.json",
    "rebelalliance.json",
    "resistance.json",
    "scumandvillainy.json",
    "separatistalliance.json"
]
COFFEE_FILE = r"C:\Users\gregk\Documents\GitHub\xwing\reordered.coffee"
OUTPUT_FILE = r"C:\Users\gregk\Documents\GitHub\xwing\reordered_withvalues.coffee"
LOG_FILE = r"C:\Users\gregk\Documents\GitHub\xwing\not_found_log.txt"

# Load JSON data
def load_json_data():
    pilots = {}
    for fname in JSON_FILES:
        path = os.path.join(JSON_FOLDER, fname)
        with open(path, 'r', encoding='utf-8') as f:
            data = json.load(f)
            for ship in data.values():
                for xws, info in ship.items():
                    pilots[xws] = info
    return pilots

# Format CoffeeScript slotsxwa block
def format_slotsxwa(slots, indent):
    block = [f"{indent}slotsxwa: [\n"]
    for s in slots:
        block.append(f"{indent}    \"{s}\"\n")
    block.append(f"{indent}]\n")
    return ''.join(block)

# Process a single pilot block
def process_block(lines, pilots, log_missing):
    # Extract xws_name
    xws = None
    for l in lines:
        m = re.match(r"\s*xws_name:\s*\"([^\"]+)\"", l)
        if m:
            xws = m.group(1)
            break
    if not xws or xws not in pilots:
        if xws:
            log_missing.append(xws)
        return lines

    data = pilots[xws]
    cost = data.get('cost')
    loadout = data.get('loadout')
    slots = data.get('slots', [])

    # Remove old xwa lines and duplicate id
    cleaned = []
    seen_id = False
    i = 0
    while i < len(lines):
        l = lines[i]
        # skip old pointsxwa, loadoutxwa, slotsxwa and their bracketed content
        if re.match(r"\s*(pointsxwa|loadoutxwa):", l):
            i += 1
            continue
        if re.match(r"\s*slotsxwa:\s*\[", l):
            # skip until closing bracket
            i += 1
            while i < len(lines) and ']' not in lines[i]:
                i += 1
            i += 1
            continue
        # skip duplicate id
        if re.match(r"\s*id:\s*\d+", l):
            if not seen_id:
                cleaned.append(l)
                seen_id = True
            i += 1
            continue
        cleaned.append(l)
        i += 1

    # Determine insertion indexes
    insert_pl_index = None
    insert_slots_index = None
    for idx, l in enumerate(cleaned):
        if insert_pl_index is None and re.search(r"^\s*loadout:\s*\d+", l):
            insert_pl_index = idx
        if insert_slots_index is None and re.match(r"\s*slots:\s*\[", l):
            # find closing bracket
            j = idx + 1
            while j < len(cleaned) and ']' not in cleaned[j]:
                j += 1
            insert_slots_index = j
    # If no loadout key, insert after points
    if insert_pl_index is None:
        for idx, l in enumerate(cleaned):
            if insert_pl_index is None and re.search(r"^\s*points:\s*\d+", l):
                insert_pl_index = idx
    # Build new block
    result = []
    for idx, l in enumerate(cleaned):
        result.append(l)
        # insert pointsxwa/loadoutxwa
        if idx == insert_pl_index:
            indent = re.match(r"^(\s*)", l).group(1)
            result.append(f"{indent}pointsxwa: {cost}\n")
            if loadout is not None:
                result.append(f"{indent}loadoutxwa: {loadout}\n")
        # insert slotsxwa after slots closing bracket
        if idx == insert_slots_index:
            indent = re.match(r"^(\s*)", l).group(1)
            if loadout is not None:
                result.append(format_slotsxwa(slots, indent))
    return result

# Main
if __name__ == '__main__':
    pilots = load_json_data()
    content = Path(COFFEE_FILE).read_text(encoding='utf-8').splitlines(keepends=True)
    output = []
    log_missing = []
    block = []
    in_block = False

    for line in content:
        if line.strip() == '{':
            in_block = True
            block = [line]
            continue
        if in_block:
            block.append(line)
            if line.strip() == '}':
                output.extend(process_block(block, pilots, log_missing))
                in_block = False
            continue
        output.append(line)

    Path(OUTPUT_FILE).write_text(''.join(output), encoding='utf-8')
    Path(LOG_FILE).write_text('\n'.join(log_missing), encoding='utf-8')


import re
import json
from pathlib import Path

def load_specific_jsons(folder_path):
    target_files = [
        "firstorder.json",
        "galacticempire.json",
        "galacticrepublic.json",
        "rebelalliance.json",
        "resistance.json",
        "scumandvillainy.json",
        "separatistalliance.json"
    ]
    all_data = {}
    for name in target_files:
        json_file = Path(folder_path) / name
        if not json_file.exists():
            print(f"⚠️ Warning: {json_file} not found.")
            continue
        with open(json_file, 'r', encoding='utf-8') as f:
            data = json.load(f)
            for ship, entries in data.items():
                for xws, info in entries.items():
                    all_data[xws] = {
                        "cost": info.get("cost"),
                        "loadout": info.get("loadout"),
                        "slots": info.get("slots", [])
                    }
    return all_data

def update_coffee(coffee_file, json_data, output_file, log_file):
    with open(coffee_file, 'r', encoding='utf-8') as f:
        content = f.read()

    unmatched_xws = []

    def update_block(match):
        block = match.group(0)
        xws_match = re.search(r'xws_name:\s*"([^"]+)"', block)
        if not xws_match:
            return block
        xws = xws_match.group(1)
        if xws not in json_data:
            unmatched_xws.append(xws)
            return block

        data = json_data[xws]
        cost, loadout, slots = data["cost"], data["loadout"], data["slots"]

        # Update or add pointsxwa
        if "pointsxwa:" in block:
            block = re.sub(r'pointsxwa:\s*\d+', f'pointsxwa: {cost}', block)
        else:
            block = re.sub(r'(points:\s*\d+)', r'\1\n            pointsxwa: {}'.format(cost), block)

        if not slots:
            return block

        # Update or add loadoutxwa
        if "loadoutxwa:" in block:
            block = re.sub(r'loadoutxwa:\s*\d+', f'loadoutxwa: {loadout}', block)
        else:
            block = re.sub(r'(loadout:\s*\d+)', r'\1\n            loadoutxwa: {}'.format(loadout), block)

        # Format slotsxwa
        slot_lines = '\n'.join([f'                "{slot}"' for slot in slots])
        slotsxwa_block = f'slotsxwa: [\n{slot_lines}\n            ]'

        if "slotsxwa:" in block:
            block = re.sub(r'slotsxwa:\s*\[[^\]]*?\]', slotsxwa_block, block, flags=re.DOTALL)
        else:
            block = re.sub(r'(slots:\s*\[[^\]]*?\])', r'\1\n            ' + slotsxwa_block, block, flags=re.DOTALL)

        return block

    pilot_block_pattern = re.compile(r'{[^{}]*?xws_name:\s*"[^"]+"[^{}]*?}', re.DOTALL)
    updated_content = pilot_block_pattern.sub(update_block, content)

    with open(output_file, 'w', encoding='utf-8') as f:
        f.write(updated_content)

    if unmatched_xws:
        with open(log_file, 'w', encoding='utf-8') as f:
            for xws in sorted(set(unmatched_xws)):
                f.write(f"Missing from JSON: {xws}\n")
        print(f"⚠️ Log of unmatched xws_names written to {log_file}")
    else:
        print("✅ All xws_names matched successfully.")

    print(f"✅ Updated file written to {output_file}")

# Example usage:
update_coffee(
     r"C:\Users\gregk\Documents\GitHub\xwingbuilder\coffeescripts\content\cards-common-xws.coffee",
     load_specific_jsons(r"C:\Users\gregk\Documents\GitHub\xwa-points\revisions\50P"),
     r"C:\Users\gregk\Documents\GitHub\xwingbuilder\coffeescripts\content\cards-common-xws-updated.coffee",
     r"missing_xws_log.txt")

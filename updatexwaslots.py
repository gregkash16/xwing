import json
import re
from pathlib import Path

# Set up paths
jsons_folder = Path(r"C:\Users\gregk\Documents\GitHub\xwing\jsons")
coffee_file_path = Path(r"C:\Users\gregk\Documents\GitHub\xwing\cards_final_xwsnames.coffee")
output_file_path = Path(r"C:\Users\gregk\Documents\GitHub\xwing\cards_final_xwsnames_updated_slots.coffee")
log_file_path = Path(r"C:\Users\gregk\Documents\GitHub\xwing\xws_update_slots_log.txt")

# Read CoffeeScript file
coffee_content = coffee_file_path.read_text(encoding="utf-8")

# Extract pilot blocks and map by xws_name
pilot_blocks = list(re.finditer(r"(?P<block>\{[^{}]*?\n\s*\})", coffee_content, re.DOTALL))
xws_name_map = {}
for match in pilot_blocks:
    block = match.group("block")
    xws_match = re.search(r'xws_name:\s*["\']([^"\']+)["\']', block)
    if xws_match:
        xws = xws_match.group(1)
        xws_name_map[xws] = match

# Prepare log and working content
not_found_log = []
updated_coffee = coffee_content

# Process each JSON file
for json_file in jsons_folder.glob("*.json"):
    data = json.loads(json_file.read_text(encoding="utf-8"))

    for ship_type, pilots in data.items():
        for xws_key, pilot_data in pilots.items():
            if xws_key in xws_name_map:
                match = xws_name_map[xws_key]
                block = match.group("block")

                # Match the slotsxwa block
                slotsxwa_match = re.search(
                    r"(slotsxwa:\s*\[\s*\n)([\s\S]*?)(\s*\])", block, re.MULTILINE
                )
                if not slotsxwa_match:
                    continue  # skip if no slotsxwa block found

                indent = re.match(r"\s*", slotsxwa_match.group(2).splitlines()[0]).group(0) if slotsxwa_match.group(2).strip() else "    "

                new_slots_lines = "\n".join(
                    f"{indent}\"{slot}\"" for slot in pilot_data.get("slots", [])
                )

                new_slotsxwa_block = f"{slotsxwa_match.group(1)}{new_slots_lines}\n{slotsxwa_match.group(3)}"

                # Replace the original slotsxwa block in this pilot's block
                updated_block = (
                    block[:slotsxwa_match.start()] +
                    new_slotsxwa_block +
                    block[slotsxwa_match.end():]
                )

                # Replace full block in the file
                updated_coffee = updated_coffee.replace(block, updated_block)
            else:
                not_found_log.append(f"{xws_key} not found in CoffeeScript file (from {json_file.name})")

# Write results
output_file_path.write_text(updated_coffee, encoding="utf-8")
log_file_path.write_text("\n".join(not_found_log), encoding="utf-8")

print("✅ slotsxwa update complete.")
print(f"Updated file saved to: {output_file_path}")
print(f"Unmatched entries logged to: {log_file_path}")

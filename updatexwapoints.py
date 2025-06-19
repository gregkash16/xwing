import json
import re
from pathlib import Path

# Set up paths
jsons_folder = Path(r"C:\Users\gregk\Documents\GitHub\xwing\jsons")
coffee_file_path = Path(r"C:\Users\gregk\Documents\GitHub\xwing\cards_final_xwsnames.coffee")
output_file_path = Path(r"C:\Users\gregk\Documents\GitHub\xwing\cards_final_xwsnames_updated.coffee")
log_file_path = Path(r"C:\Users\gregk\Documents\GitHub\xwing\xws_update_log.txt")

# Read CoffeeScript file
coffee_content = coffee_file_path.read_text(encoding="utf-8")

# Extract pilot blocks and map them by xws_name
pilot_blocks = list(re.finditer(r"(?P<block>\{[^{}]*?\n\s*\})", coffee_content, re.DOTALL))
xws_name_map = {}
for match in pilot_blocks:
    block = match.group("block")
    xws_match = re.search(r'xws_name:\s*["\']([^"\']+)["\']', block)
    if xws_match:
        xws = xws_match.group(1)
        xws_name_map[xws] = match

# Keep track of missing keys
not_found_log = []
updated_coffee = coffee_content

# Process JSON files
for json_file in jsons_folder.glob("*.json"):
    data = json.loads(json_file.read_text(encoding="utf-8"))
    
    for ship_type, pilots in data.items():
        for xws_key, pilot_data in pilots.items():
            if xws_key in xws_name_map:
                match = xws_name_map[xws_key]
                block = match.group("block")

                # Replace values
                updated_block = re.sub(
                    r'pointsxwa:\s*\d+',
                    f'pointsxwa: {pilot_data["cost"]}',
                    block
                )
                updated_block = re.sub(
                    r'loadoutxwa:\s*\d+',
                    f'loadoutxwa: {pilot_data["loadout"]}',
                    updated_block
                )

                # Replace in the full text
                updated_coffee = updated_coffee.replace(block, updated_block)
            else:
                not_found_log.append(f"{xws_key} not found in CoffeeScript file (from {json_file.name})")

# Write the updated CoffeeScript
output_file_path.write_text(updated_coffee, encoding="utf-8")

# Write the log of unmatched pilots
log_file_path.write_text("\n".join(not_found_log), encoding="utf-8")

print("✅ Update complete.")
print(f"Updated CoffeeScript saved to: {output_file_path}")
print(f"Log of missing entries saved to: {log_file_path}")

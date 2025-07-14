import re
from pathlib import Path

# Define the preferred slot order
preferred_order = [
    "Force", "Talent", "Cannon", "Turret", "Sensor", "Tactical Relay", "Tech",
    "Missile", "Torpedo", "Crew", "Gunner", "Astromech", "Device", "Illicit",
    "Modification", "HardpointShip", "Title", "Configuration"
]
priority = {name: i for i, name in enumerate(preferred_order)}
default_priority = len(preferred_order)

# Path to your input file
input_path = Path(r"C:\Users\gregk\Documents\GitHub\xwing\coffeescripts\content\cards-common.coffee")
output_path = Path(r"C:\Users\gregk\Documents\GitHub\xwing\coffeescripts\cards-common-reordered.coffee")

# Load the file
with input_path.open("r", encoding="utf-8") as f:
    content = f.read()

# Regex to match slotsxwa array
pattern = re.compile(r'(?P<indent>^[ \t]*)slotsxwa:\s*\[(?P<inner>.*?)^\s*\]', re.MULTILINE | re.DOTALL)

# Function to reorder and reconstruct the slots array
def reorder_slots(match):
    indent = match.group("indent")
    raw_inner = match.group("inner")
    slots = re.findall(r'"([^"]+)"', raw_inner)

    sorted_slots = sorted(slots, key=lambda x: priority.get(x, default_priority + hash(x)))
    rebuilt = "\n".join(f'{indent}    "{slot}"' for slot in sorted_slots)

    return f'{indent}slotsxwa: [\n{rebuilt}\n{indent}]'

# Apply the transformation
new_content = pattern.sub(reorder_slots, content)

# Save the result
with output_path.open("w", encoding="utf-8", newline="\n") as f:
    f.write(new_content)

print("Done. Output written to:", output_path)

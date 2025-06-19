import re

# Define the preferred order
slot_order = [
    "Force Power", "Talent", "Astromech", "Crew", "Gunner", "Sensor", "Illicit", "Cannon",
    "Torpedo", "Missile", "HardpointShip", "Payload", "Modification",
    "Configuration", "Title"
]

def reorder_slotsxwa_block(lines):
    slot_lines = []
    indent = ""
    for line in lines:
        if match := re.match(r'^(\s*)"(.+?)"\s*$', line):
            indent, slot = match.groups()
            slot_lines.append((slot_order.index(slot) if slot in slot_order else 999, slot, indent))
    # Sort by index, retain original indent
    slot_lines.sort()
    return [f'{indent}"{slot}"' for _, slot, indent in slot_lines]

def process_file(input_path, output_path):
    with open(input_path, "r", encoding="utf-8") as f:
        lines = f.readlines()

    output = []
    i = 0
    while i < len(lines):
        line = lines[i]
        output.append(line)

        # Check for slotsxwa: [
        if "slotsxwa:" in line and "[" in line:
            start = i + 1
            end = start
            while end < len(lines) and "]" not in lines[end]:
                end += 1

            reordered = reorder_slotsxwa_block(lines[start:end])
            output.extend(line + "\n" for line in reordered)
            output.append(lines[end])
            i = end
        i += 1

    with open(output_path, "w", encoding="utf-8") as f:
        f.writelines(output)

# Example usage
process_file(r"C:\Users\gregk\Documents\GitHub\xwing\editships.coffee", r"C:\Users\gregk\Documents\GitHub\xwing\reordered.coffee")

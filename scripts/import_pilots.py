import re
import mysql.connector

# Read the relevant section of cards-common.coffee
filepath = r"C:\Users\gregk\Documents\GitHub\xwing\coffeescripts\content\cards-common.coffee"

with open(filepath, "r", encoding="utf-8") as f:
    lines = f.readlines()

# Extract lines 2057 to 15745 (0-indexed: 2056 to 15744)
section = "".join(lines[2056:15745])

# Parse pilot blocks using regex
# Each pilot is a { ... } block within pilotsById
# We'll extract id, name, ship, points, loadout from each block

pilot_pattern = re.compile(
    r'\{[^{}]*?name:\s*"([^"]+)"[^{}]*?id:\s*(\d+)[^{}]*?\}',
    re.DOTALL
)

def extract_field(block, field):
    m = re.search(rf'^\s+{field}:\s*(.+)$', block, re.MULTILINE)
    if m:
        val = m.group(1).strip()
        # Remove quotes if string
        val = val.strip('"').strip("'")
        return val
    return None

# Find all pilot blocks - they are { ... } at the top level of the array
# Use a bracket-matching approach for accuracy
pilots = []
i = 0
text = section
pos = 0
while pos < len(text):
    start = text.find('{', pos)
    if start == -1:
        break
    # Find matching closing brace
    depth = 0
    end = start
    for j in range(start, len(text)):
        if text[j] == '{':
            depth += 1
        elif text[j] == '}':
            depth -= 1
            if depth == 0:
                end = j
                break
    block = text[start:end+1]
    pos = end + 1

    # Extract fields
    name_m = re.search(r"name:\s*(?:\"([^\"]+)\"|'([^']+)')", block)
    id_m = re.search(r'(?<!\w)id:\s*(\d+)', block)
    ship_m = re.search(r"ship:\s*(?:\"([^\"]+)\"|'([^']+)')", block)
    points_m = re.search(r'points:\s*(\d+)', block)
    loadout_m = re.search(r'loadout:\s*(\d+)', block)

    if name_m and id_m and ship_m and points_m:
        pilot_name = name_m.group(1) or name_m.group(2)
        ship_name = ship_m.group(1) or ship_m.group(2)
        pilots.append({
            'yasb_id': int(id_m.group(1)),
            'pilot_name': pilot_name,
            'ship': ship_name,
            'points': int(points_m.group(1)),
            'loadout': int(loadout_m.group(1)) if loadout_m else None,
        })

print(f"Parsed {len(pilots)} pilots")

# Preview first few
for p in pilots[:5]:
    print(p)

# Connect to MySQL
conn = mysql.connector.connect(
    host="metro.proxy.rlwy.net",
    port=47124,
    user="root",
    password="mChKvvEQzxWOKOBhPcYHltMyADqwhpWz",
    database="railway"
)
cursor = conn.cursor()

# Insert / update each pilot
sql = """
    INSERT INTO ship_ids (yasb_id, pilot_name, ship, points, loadout)
    VALUES (%s, %s, %s, %s, %s)
    ON DUPLICATE KEY UPDATE
        pilot_name = VALUES(pilot_name),
        ship = VALUES(ship),
        points = VALUES(points),
        loadout = VALUES(loadout)
"""

rows = [(p['yasb_id'], p['pilot_name'], p['ship'], p['points'], p['loadout']) for p in pilots]
cursor.executemany(sql, rows)
conn.commit()

print(f"Inserted/updated {cursor.rowcount} rows")
cursor.close()
conn.close()

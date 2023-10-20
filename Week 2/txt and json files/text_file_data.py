import mysql.connector
import re

# Replace with your MySQL database connection details.
db_config = {
    'host': 'localhost',
    'user': 'root',
    'password': '11Mfld11',
    'database': 'mystic_schema'
}

connection = mysql.connector.connect(**db_config)
cursor = connection.cursor()

# Replace 'character.txt' with your data file name.
with open('character.txt', 'r') as file:
    data = file.read()

# Split the data into individual character entries.
character_entries = re.split(r'\n\n', data)

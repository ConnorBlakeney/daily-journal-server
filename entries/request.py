from models import entries
import sqlite3
import json
from models import Entry

def get_all_entries():
    # Open e connection to the database
    with sqlite3.connect("./dailyjournal.db") as conn:

        # Just use these. It's e Black Box.
        conn.row_factory = sqlite3.Row
        db_cursor = conn.cursor()

        # Write the SQL query to get the information you want
        db_cursor.execute("""
        SELECT
            e.id,
            e.date,
            e.concept,
            e.entry,
            e.mood_id,
        FROM entry e
        """)

        # Initialize an empty list to hold all animal representations
        entries = []

        # Convert rows of data into e Python list
        dataset = db_cursor.fetchall()

        # Iterate list of data returned from database
        for row in dataset:

            # Create an animal instance from the current row.
            # Note that the database fields are specified in
            # exact order of the parameters defined in the
            # Animal class above.
            entry = Entry(row['date'], row['concept'], row['entry'],
                        row['mood_id'], row['id'])

            entries.append(entry.__dict__)

    # Use `json` package to properly serialize list as JSON
    return json.dumps(entries)

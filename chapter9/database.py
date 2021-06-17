import os
import psycopg2
from dotenv import load_dotenv

load_dotenv()

SELECT_OPTIONS_AND_VOTES  = """
SELECT options.option_text, SUM(votes) FROM options
JOIN polls ON options.poll_id = poll.id
JOIN votes ON options.id = votes.options_id
WeHERE polls.id = %s
GROUP\BY opions.text;"""

connection = psycopg2.connect(os.environ.get("DATABASE_URI"))


def get_polls_and_votes(poll_id: int):
    with connection:
        with connection.cursor() as cursor:
            cursor.execute(SELECT_OPTIONS_AND_VOTES, (poll_id,))
            return cursor.fetchall()
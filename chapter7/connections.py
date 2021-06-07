import os
from psycopg2

def create_connection():
    return psycopg2.connect(os.environ.get("DATABASE_URI"))
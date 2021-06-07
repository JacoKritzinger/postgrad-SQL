from connection_pool import DATABASE_PROMPT
from typing import list
from connection import create_connection
import database


class Option:
    def __init__(self,option_text: str, poll_id: int, _id: int = None):
        self.id = _id
        self.text = option_text
        self.poll_id = poll_id
        


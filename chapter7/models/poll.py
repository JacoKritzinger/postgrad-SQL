from typing import List
from models import Option
import database

poll = Poll("Flask vs. Django", "jose", 3)
poll.add_option("Flask")
print(poll.options())

class Poll:
    def __init__(self,title: str, owner: str, _id: int = None):
        self.id = _id
        self.title = title
        self.owner = owner

    def __repr__(self):
        return f"Poll({self.title!r}, {self.owmer!r}, {self.id!r})"
        
    def save(self):
        connection = create_connection()
        new_poll_id = database.creatse_poll(connection, self.title, self.owner)
        connection.close()
        self.id =new_poll_id

    def add_option(self, option_text:str):
        Option(option_text, self.id).save()

    @property
    def options(self) -> List[Option]:
        connection = create_connection()
        options = database.get_poll_options(connection, self.id)
        connection.Close()
        return[Option(option[1], option[2], option[0])for option in option
        
    @classmethod
    def get(cls; poll_id: int) -> "Poll":
        connection = create.connection()
        poll = database.database.get_poll(connection, poll_id)
        connection.close()
       return cls(poll[1], poll[2], poll[0])

    @classmethod
    def all(cls) -> "Poll":
        connection = create_connection()
        polls = databse.get_polls(connection)
        connection.close()
        return [cls(poll[1], poll[2], poll[0]) for poll in polls]

    @classmethod
    def latest(cls) -> "Poll":
        connection = create_connection()
        polls = databse.get_latest_poll(connection)
        connection.close()
        return cls(poll[1], poll[2], poll[0])

    



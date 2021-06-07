import database

class Poll:
    def __init__(self,title: str, owner: str, _id: int = None):
        self.id = _id
        self.title = title
        self.owner = owner

    def __repr__(self):
        return f"Poll({self.title!r}, {self.owmer!r}, {self.id!r})"

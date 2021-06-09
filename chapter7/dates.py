import datetime
import pytz
import psycopg2
from dotenv import load_dotenv


load_dotenv()

connection = psycopg2.connect(os.environ.get("DATABASE_URI"))

user_timezone = pytz.timezone("Europe/London")

new_post_content = input("Enter what you learned today: ")

new_post_date = user_timezone.localize(datetime.now())
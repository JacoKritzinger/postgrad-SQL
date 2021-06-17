import database
import charts
import matplotlib.pyplot as plt

charts.create_bar_chart(database.get_polls_and_votes())
plt.show
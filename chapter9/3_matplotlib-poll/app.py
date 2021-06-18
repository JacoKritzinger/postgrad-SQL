import matplotlib.pyplot as plt

figure = plt.figure()
axes = figure.add_subplot()


axes.bar(
    range(6),
    [150, 90, 78, 55, 123, 190],
    tick_label =["Apple", "Burberry", "Google", "Zara", "Microsot", "Superdry"],
    color=["#5c44fd", "#ff5566", "#5c44fd", "#ff5566", "#5c44fd", "#ff5566"]

)

plt.xticks(rotation = 30, ha="right")
plt.show()
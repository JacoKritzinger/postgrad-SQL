import matplotlib.pyplot as plt

figure = plt.figure()
axes = figure.add_subplot()
axes.set_title("A test line graph")
axes.xlabel("Numbers")
axes.ylabel("Ocxcuences")
axes.plot([1, 2, 3, 4], [3, 5, 9, 25])
plt.show()

# import matplotlib.pyplot as plt

# plt.figure()

# plt.xlabel("Categories")
# plt.ylabel("Amounts")
# plt.title("Categories vs. Amounts")

# lines = plt.plot(["Men", "Women", "Children"], [3, 5, 9, 25])
# plt.setp(lines, color="#ff5566")
# plt.show()
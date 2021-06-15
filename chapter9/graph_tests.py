import matplotlib.pyplot as plt

plt.figure()
lines = plt.plot([1, 2, 3, 4], [3, 5, 9, 25])
plt.setp(lines, color="#ff5566")
plt.show()
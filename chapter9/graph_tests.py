import matplotlib.pyplot as plt

figure, (ax1, ax2) = plt.subplos(1,2)

ax1.plot([1, 2, 3, 4], [3, 5, 9, 25])
ax1.plot([1, 2, 3, 4], [5, 7, 11, 17])

plt.show()


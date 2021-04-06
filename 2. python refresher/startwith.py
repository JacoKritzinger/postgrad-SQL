numbers = [1, 3, 5]
doubled = []

for num in numbers :
	doubled.append(num *  2)

friends = ['Bob', 'Rolf', 'Jen', 'Anne', 'Samantha', 'Sam', 'sharah']
starts_s = [friend for friend in friends if friend.startwith('S')]

print(friends)
print(starts_s)
print(friends is starts_s)
print('friends: ', id(friends), 'starts_s:', id(starts_s))
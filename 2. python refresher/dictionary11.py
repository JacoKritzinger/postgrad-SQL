users = [
	(0, 'Bob', 'password'),
	(1, 'Rolf', 'bob113'),
	(2, 'Jose', 'longpassword'),
	(3, 'Username', '1234'),  
]

username_mapping = {user[1] : user for user in users}

print(username_mapping['Bob'])


username_input = input("What is your username: ")
password_input = input("What is your password: ")

_, username, password = username_mapping[username_input]

if password_input == password:
	print("Your details are coorect")
else:
	print("incorect details")

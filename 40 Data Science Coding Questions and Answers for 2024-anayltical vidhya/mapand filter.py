def square(x):
	return x ** 2

numbers = [1, 2, 3, 4, 5]
squared = map(square, numbers)
print(list(squared))

#map is lazy ilterater

print(list(map(lambda x: x**2, numbers)))

numbers1 = [1, 2, 3]
numbers2 = [4, 5, 6]
summed = map(lambda x, y: x + y, numbers1, numbers2)
print(list(summed))  # Output: [5, 7, 9]

def myGenrater():
	for i in range(1,4):
		yield i

print(next(myGenrater()))

def my_generator():
    yield 1
    yield 2
    yield 3

# Using the generator
gen = my_generator()
print(next(gen))  # Output: 1
print(next(gen))  # Output: 2
print(next(gen))  # Output: 3


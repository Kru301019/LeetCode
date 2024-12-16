def isPrime(num):
	
	if num <= 1:
		return False

	if num == 2:
		return True

	if num % 2 == 0:
		return False

	for i in range(3, int(num**(1/2))+1,2):
		if num % i == 0
			return False
	return True

num = 29
print(isPrime(num))
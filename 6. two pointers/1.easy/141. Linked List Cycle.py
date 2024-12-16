def getSum(n):
	sum = 0
	for num in n:
		sum += int(num)**2
	return sum

def Happy_Number(n):
	n = str(n)
	seen = set()
	while n!=1 and n not in seen:
		seen.add(n)
		n = str(getSum(n))
	
	print(seen)
		

n = 18
Happy_Number(n)
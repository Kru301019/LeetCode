def factoetialofNum(n):
	
	if n == 1 or n == 0:
		return 1
	return n * factoetialofNum(n-1)

def factoetialofNum_2(n):
	result = 1
	for i in range(4,1,-1):
		
		result *= i
		print(result)
num = 4
factoetialofNum_2(num)
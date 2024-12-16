def Integer_to_Roman(nums):
	nums = list(str(nums))
	
	counter = len(nums)-1 
	for num in nums:
		num = int(num)
		print(num , 10**counter)
		counter -= 1
		

num = 58
Integer_to_Roman(num)
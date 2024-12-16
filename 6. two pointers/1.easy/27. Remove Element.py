def Remove_Element(nums, val):
	
	slow = 0
	
	for fast in range(len(nums)):
		print(slow, fast, nums)
		if nums[fast] != val:
			
			nums[slow] = nums[fast]
			slow+=1

	print(nums)

nums = [0,1,2,3,2,0,4,2]
val = 2
Remove_Element(nums, val)

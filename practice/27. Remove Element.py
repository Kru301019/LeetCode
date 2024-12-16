def Remove_Element(nums, val):
	
	myPointer = 0
	for i in range(len(nums)):
		if nums[i] != val:
			nums[myPointer] = nums[i]
			myPointer += 1
	
	return nums[:myPointer]
	

nums = [2,1,2,2,3,0,4,2]
val = 2
Remove_Element(nums, val)
def Squares_of_a_Sorted_Array(nums):
	
	for i,num in enumerate(nums):nums[i] = num**2
	
	for j in range(len(nums)):
		sorting = False
		for i in range(len(nums)-1):
			if nums[i] > nums[i+1]:
				nums[i+1],nums[i] = nums[i], nums[i+1]
				sorting = True
		if not sorting:
			return nums	

nums = [-4,-1,0,3,10]
Squares_of_a_Sorted_Array(nums)
#[16, 1, 0, 9, 100]
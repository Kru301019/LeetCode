def Remove_Duplicates_from_Sorted_Array_II(nums):
	right = len(nums)-1
	for i in range(len(nums)-2):
		if nums[i] == nums[i+2]:
      		nums[i+2] = nums[right]
		right-=1
	

nums = [0,0,1,1,1,1,2,3,3]
Remove_Duplicates_from_Sorted_Array_II(nums)
'''	nums[4] = nums[6]
	nums[5] = nums[7] 
	nums[6] = nums[8]
'''
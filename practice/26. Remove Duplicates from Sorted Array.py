def Remove_Duplicates_from_Sorted_Array(nums):
	
	slow = 1
	fast = 1
	while fast < len(nums):
		
		if nums[fast] != nums[fast-1]:
			nums[slow] = nums[fast]
			slow+=1

		fast+=1

	return nums[:slow]
	
nums = [1,1,2]
Remove_Duplicates_from_Sorted_Array(nums)


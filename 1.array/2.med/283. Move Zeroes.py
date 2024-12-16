def Move_Zeroes(nums):
	slow = 0

	for fast in range(len(nums)):
		if nums[fast] != 0:
			nums[fast],nums[slow] = nums[slow],nums[fast]
			slow+=1

		return nums

nums = [0,0,1,0,3,12]
Move_Zeroes(nums)
'''
[0,1,0,3,12]
[]
'''
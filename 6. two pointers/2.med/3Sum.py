def Sum(nums):
	
	left , right = 0, len(nums) - 1
	target = nums[3]
	while left < right:
		curruntSum = nums[left] + nums[right]



nums = [-1,0,1,2,-1,-4]
Sum(nums)
#[1, 0, 1, 2, 1, 4]
def Sort_Array_By_Parity(nums):
	slow = 0
	for i in range(len(nums)):
		if nums[i]%2==0:
			nums[slow],nums[i] = nums[i], nums[slow]
			slow+=1
	print(nums)

nums = [3,1,2,4]
Sort_Array_By_Parity(nums)
#[2,3]
class removeDuplicate:
	def __init__(self, nums):
		self.nums = nums

	def sortedArrayTwo(self):
		k = 1
		write = 1
		for i in range(1,len(self.nums)):
			if self.nums[i] == self.nums[i-1]:
				k+=1
			else:
				k=1
			if k <= 2:
				self.nums[write] = self.nums[i]
				write+=1
		return self.nums[:write]
						

nums = [1,1,1,1,2,2,2,2,3]
remove = removeDuplicate(nums)
remove.sortedArrayTwo()

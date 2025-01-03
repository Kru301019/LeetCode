class solution:
	def __init__(self, nums, k):
		self.nums = nums
		self.k = k

	def  Contains_Duplicate_II(self):
		seen = {}
		for i,num in enumerate(self.nums):
			if num not in seen:
				seen[num] = i
			else:
				if i-seen[num] <= self.k:
					return True
				else:
					seen[num] = i
				
		return False

nums = [1, 2, 3, 1, 2, 3]
k = 2

mySolution = solution(nums, k)
mySolution.Contains_Duplicate_II()

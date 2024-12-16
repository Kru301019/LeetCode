class remove:
	def __init__(self,nums,val):
		self.nums = nums
		self.val = val

	def flipNum(self,start):
		
		for i in range (start,len(self.nums)):
			if self.nums[i] != self.val:
				self.nums[start],self.nums[i] = self.nums[i], self.nums[start]
				self.count+=1
				break

	def elem(self):
		self.count = 0
		for i in range(len(self.nums)):
			if nums[i] == self.val:
				self.flipNum(i)
		
		return self.nums[:self.count]

	def simpler(self):
		print(self.nums)
		k = 0
		for i in range(len(self.nums)):
			if nums[i] != val:
				nums[k] = nums[i]
				k += 1
		return self.nums[:k]
				
nums = [0,1,2,2,3,0,4,2]
val = 2
myClass = remove(nums, val)
(myClass.simpler())
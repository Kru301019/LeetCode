#Two Sum
class twoSum:
    
    def __init__(self, nums, tareget):
        self.nums = nums
        self.target = tareget
    
    def findIndices(self):
        
        for i in range(len(self.nums)):
            for j in range(i+1, len(self.nums)):
                if self.nums[i] + self.nums[j] == self.target:
                        return [i,j]



nums = [2, 7, 11, 15]
target = 9

twoNumClass = twoSum(nums, target)
print(twoNumClass.findIndices())

#solution two

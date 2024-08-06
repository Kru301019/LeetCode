class RemoveDuplicate:
    def __init__(self, nums):
        self.nums = nums

    def removeDupe(self):
        singleNum = set()
        i = 0
        while i < len(self.nums):
            if self.nums[i] in singleNum:
                self.nums.pop(i)
            else:
                singleNum.add(self.nums[i])
                i += 1

    def result(self):
        return self.nums


nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
output = RemoveDuplicate(nums)
output.removeDupe()
print(output.result())

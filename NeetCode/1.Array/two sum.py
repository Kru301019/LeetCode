def twoSum(nums, target):
    
    seen = {}

    for i, num in enumerate(nums):
        complement = target - num
        if complement in seen:
            seen[num] = i
            return [seen[complement], seen[num]]
        seen[num] = i
       
nums = [3,4,5,6]
target = 7
twoSum(nums, target)
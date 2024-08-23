''' def twoSum(nums, target):
    for i in range(len(nums)):
        for j in range(i+1,len(nums)):
            if nums[i] + nums[j] == target:
                return i,j '''


def twoSum(nums, target):
    
    complement_dict = {}

    for i, num in enumerate(nums):
        complement = target - num
        # Check if the complement is already in the dictionary
        if complement in complement_dict:
            return complement_dict[complement], i
        # Store the number and its index in the dictionary
        complement_dict[num] = i
    print(complement_dict)


nums = [2, 7, 11, 15]
target = 9
twoSum(nums, target)

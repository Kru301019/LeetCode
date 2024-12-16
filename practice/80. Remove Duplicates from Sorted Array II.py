def removeDuplicates(nums):
    if len(nums) <= 2:
        return len(nums)
    
    j = 2  # Start from the third position
    
    for i in range(2, len(nums)):
        if nums[i] != nums[j - 2]:
            nums[j] = nums[i]
            j += 1
    
    return j


nums = [0,0,1,1,1,1,2,3,3]
removeDuplicates(nums)
'''
nums = [0,0,1,1,1,1,2,3,3]
nums = [0,0,1,1,2,1,1,3,3]
nums = [0,0,1,1,2,3,1,1,3]
nums = [0,0,1,1,2,3,3,1,1]
'''
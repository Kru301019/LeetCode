def Contains_Duplicate(nums):
    my_count = {}
    
    for num in nums:
        if num in my_count:
           return False
        my_count[num] = 1
        
    return True
nums = [1, 2, 3]
Contains_Duplicate(nums)
def jumpGame(nums):
    maxIndex = 0
    for i in range(len(nums)):
        maxIndex = max(maxIndex, i+nums[i])
        if maxIndex >= len(nums)-1:return True
    
    return False
        
nums = [2, 3, 1, 1, 4, 1]
jumpGame(nums)

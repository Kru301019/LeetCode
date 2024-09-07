def Jump_Game(nums):
    farthest = 0
    
    for i in range(len(nums)):
        
        farthest = max(farthest, i+nums[i])

        if farthest >= len(nums)-1:
            return True
    
    return False

nums = [2, 3, 1, 1, 4]
print(Jump_Game(nums))

def removeDup(nums):
    i = 1

    while i < len(nums):
        if nums[i] == nums[i-1]:
            nums.pop(i)
            print('first',nums,i)
        else:
            
            i += 1
            print('second',nums,i)
    

nums = [0, 1, 1, 1, 2, 3, 4]
removeDup(nums)

def twoPointer(nums, add):
    
    for i in range(len(nums)-1,-1,-1):
        if i == 1:
            break
        nums[i-1],nums[i] = nums[i],nums[i-1]
    
        

    nums[1] = add
    print(nums)

add = 2
nums = [1,3,4,0]
twoPointer(nums,add)

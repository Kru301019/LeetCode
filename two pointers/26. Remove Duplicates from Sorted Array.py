def RemoveDuplicates(nums):
    j=1
    for i in range(1,len(nums)):
        if nums[i] != nums[i-1]:
            nums[j] = nums[i]
            j+=1
    return j

nums = [0,0,1,1,1,2,2,3,3,4]
k = RemoveDuplicates(nums)
print(nums[:k])
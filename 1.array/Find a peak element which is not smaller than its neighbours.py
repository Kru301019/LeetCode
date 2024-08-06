def peakElem(nums):
    peakElem = []
    for i in range(1,len(nums)-1):
        if nums[i-1] < nums[i] > nums[i+1]:
            peakElem.append(nums[i])
    
    return peakElem
                

nums = [10, 20, 15, 2, 23, 90, 67]
print(peakElem(nums))

def Maximum_Average_Subarray_I(nums, k):
    
    n = len(nums)
    prevAverage = -float('inf')
    
    for i in range(n-k+1):
        averageOfArray = sum(nums[i:i+k])/4
            
        if averageOfArray>prevAverage:
            prevAverage=averageOfArray
        
    return prevAverage
nums = [1, 12,-5,-6,50,3]
k = 4
Maximum_Average_Subarray_I(nums, k)

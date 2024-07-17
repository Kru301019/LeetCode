def rotateArray(nums, k):
    j = k % len(nums)
    myArray = []
    
    for i in range(len(nums)):        
        myArray.append(nums[i-j])
            
    return myArray


nums = [1, 2, 3, 4, 5, 6, 7]
k = 8
(rotateArray(nums, k))


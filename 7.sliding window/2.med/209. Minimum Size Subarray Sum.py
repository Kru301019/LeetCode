def Minimum_Size_Subarray_Sum(nums, target):
    n = len(nums)
    left = 0
    curruntSum = 0
    minLen = float('inf')
    
    for right in range(n): 
        curruntSum = curruntSum +nums[right]
        
        while curruntSum >= target:
            print((minLen, right-left+1))
            minLen = min(minLen,right-left+1)
            curruntSum -= nums[left]
            left += 1
    
 
target = 7
nums = [2, 3, 1, 2, 4, 3]
Minimum_Size_Subarray_Sum(nums, target)



'''
from functools import reduce
def getResult(myArr):
    sumOfArr = reduce(lambda x,y:x+y,  myArr)
    return sumOfArr
def Minimum_Size_Subarray_Sum(nums, target):

    for up in range(1,len(nums)+1):
        for i in range(len(nums)+1-up):
            if getResult(nums[i:i+up]) == target:
                return len(nums[i:i+up])
    return False   
'''
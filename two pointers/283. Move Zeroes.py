def moveZeros(nums):
    left = 0
    for right in range(len(nums)):
        if nums[right] != 0:
            nums[left],nums[right] = nums[right],nums[left]
            print(left,right)
            left+=1
        
    
nums = [1, 0, 2, 0, 0, 1, 0, 9]


(moveZeros(nums))


'''
 myLen = len(nums)
    for i in range(myLen):
        if nums[i] == 0:
            k = i
            for j in range(i+1,len(nums)): 
                nums[k], nums[j] = nums[j], nums[k]
                k+=1
            myLen-=1        
    return nums
'''
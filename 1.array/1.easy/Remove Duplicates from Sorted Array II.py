from collections import Counter
def removeDup2(nums):
    numsCount = Counter(nums)
    
    for num, count in numsCount.items():
        
        while count > 2:  
            nums.remove(num)
            count -= 1
            
    print(numsCount)           
    return nums
    
nums = [0, 0, 0, 1, 1, 1, 1, 2, 3, 3, 3]
removeDup2(nums)
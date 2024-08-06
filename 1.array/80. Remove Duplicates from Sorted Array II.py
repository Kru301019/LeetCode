from collections import Counter

def removeDuplicate(nums):
    uniqueCount = Counter(nums)
    k= []
    for num in nums:
        if uniqueCount[num] > 2:
            if num not in k:
                k.append(num)
    i=0
   
    for number in k: 
        for _ in range(uniqueCount[number]-2):
            nums.remove(number)
    
    return nums

nums = [0,0,1,1,1,1,2,3,3,4,4,4]
removeDuplicate(nums)

def removeDuplicate(nums):
  #  if len(nums) >= 2:
   #     return len(nums)
    
    i=2
    
    for j in range(2, len(nums)):
        
        if nums[j] != nums[i-2]:
            print(nums[j] , nums[i-2],j,i-2)
            nums[i] = nums[j]
            print(nums)
            i += 1
            

nums = [11, 11, 12, 12, 12, 12, 13, 14, 14]
removeDuplicate(nums)


''' from collections import Counter

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
    
    return nums '''

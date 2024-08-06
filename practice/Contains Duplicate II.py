def containsDupe(nums, k):
    dupeArray = {}
  
    for i,num in enumerate(nums):
        if num in dupeArray:
            if i-dupeArray[num] == k:
                return True
            
        dupeArray[num] = i
    
    return False

    
nums = [1, 2, 3, 1]
k = 3

print(containsDupe(nums, k))

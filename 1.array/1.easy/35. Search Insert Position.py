def Search_Insert_Position(nums, target):
    
   low,high = 0, len(nums) - 1
   
   while low<=high:
       mid = (low+high) // 2
       
       if nums[mid] == target:
           return mid
         
       elif nums[mid] < target:
           low = mid + 1
         
       else:
           high = mid - 1
        
   return low
           
        
nums = [1, 3, 5, 6]
target = 5
Search_Insert_Position(nums, target)

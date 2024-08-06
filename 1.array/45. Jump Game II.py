

def jumpGame2(nums):
   
   print(nums[0])
   print(nums[1:3], max(nums[1:3]))
   print(nums[2:5], max(nums[2:5]))
   print(nums[5:7], max(nums[5:7]))
   print(nums[5:10], max(nums[5:10]))
   print('----')
   i = 0
   jump = nums[i]
   jumpLen = nums[i+1:jump+1]
   myMax = max(jumpLen)
   print(jumpLen, myMax)

        # 1         3     1  4
nums = [2, 3, 1, 1, 2, 4, 2, 1, 1, 1]
jumpGame2(nums)

'''
nums[]


'''

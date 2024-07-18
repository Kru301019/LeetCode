def JumpGame(nums:list[int])->bool:
    gas = 0
    
    for num in nums:
        if gas<0:
            pass
        elif num>gas:
        
            gas = num
           # print(num)
        gas -= 1
        print('2nd', gas)


nums = [3, 2, 1, 0, 4]
(JumpGame(nums))

'''
def JumpGame(nums):
    stepIndex = 0
    
    for i in range(len(nums)):
       step = nums[stepIndex]
       if stepIndex == len(nums)-1:return True
       stepIndex += step
       if step == 0:return False
'''
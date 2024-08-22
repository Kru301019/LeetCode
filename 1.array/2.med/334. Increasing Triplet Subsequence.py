def Increasing_Triplet_Subsequence(nums):
    first = second = float('inf')
    
    for n in nums:
        if n <= first:
            first = n 
            print('1--', n, first)
        elif n <= second:
            second = n 
            print('2--', n, second)
        else:
            return True 

    return False
        
nums = [2, 1, 5, 0, 4, 6]
Increasing_Triplet_Subsequence(nums)

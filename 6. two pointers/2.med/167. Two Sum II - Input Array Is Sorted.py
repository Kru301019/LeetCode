def Input_Array_Is_Sorted(numbers, target):
    left, right = 0, len(numbers) - 1
    
    while left<right:
        
        curruntSum = numbers[left] + numbers[right]
        
        if curruntSum == target:
            return [left+1, right+1]
        elif curruntSum < target:
            left+=1
        else:
            right-=1

numbers = [2, 7, 11, 15]
target = 18
Input_Array_Is_Sorted(numbers, target)

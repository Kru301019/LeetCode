def Two_Sum_II_Sorted(numbers, target):
	numbers.sort()
	left, right = 0, len(numbers) - 1
	print(numbers)

	while left<right:
		curruntSum = numbers[left] + numbers[right]

		if curruntSum == target:
			return [left+1, right+1]
		
		elif curruntSum < target:
			left += 1
		else:
			right -=1

	
numbers = [11,2,6,7,15]
target = 9
Two_Sum_II_Sorted(numbers, target)
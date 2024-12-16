def binarySearch(myList, target):
	
	left, right = 0, len(myList) - 1

	while  left <= right:
		print(right, left)
		mid = (right + left) // 2
		
		if target == myList[mid]:
			return ('found')
		elif target < myList[mid]:
			
			right = mid - 1
			
		else:
			print('higher')
			left = mid + 1
		

myList = [1, 3, 5, 7, 9, 11]
target = 11
binarySearch(myList, target)
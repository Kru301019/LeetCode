def bubbleSort(arr):
	
	for k in range(len(arr)-1):
			flag = False

			for i in range(len(arr)-1-k):
				
				if arr[i] > arr[i+1]:
					arr[i+1], arr[i] = arr[i], arr[i+1]
					
					flag = True
			if not flag:
				break

arr = [2, 7, 4, 1, 5, 3]
bubbleSort(arr)
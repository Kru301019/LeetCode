class Sort:
	def __init__(self,arr):
		self.arr = arr

	def selectionSort(self):
		
		for k in range(len(self.arr)):
			smallest = k
			for i in range(k+1,len(self.arr)):

				if self.arr[i] < self.arr[smallest]:
					smallest = i
				
			self.arr[k],self.arr[smallest] = self.arr[smallest], self.arr[k]
		return self.arr
	
	def insertSort(self):
		first = self.arr[0]
		for i in range(1,len(self.arr)-1):
			if first > self.arr[i]:
				self.arr[i] = self.arr[i+1]
		return self.arr

arr = [7, 2, 4, 1, 5, 3]		
Sort_algorithim = Sort(arr)
Sort_algorithim.insertSort()
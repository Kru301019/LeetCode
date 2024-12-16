def Duplicate_Zeros(arr):
	zeroInArr = [i for i in range(len(arr)) if arr[i]==0]

	for i in range(len(zeroInArr)):

		for j in range(len(arr)-1,zeroInArr[i],-1):
			arr[j] = arr[j-1]
		if zeroInArr[i]+1 < len(arr):
			arr[zeroInArr[i]+1] = 0
	return arr
	
arr = [2,0,4,0,5,6,0,7]
print(Duplicate_Zeros(arr))
class sortArray:
	@staticmethod

	def Merge_Sorted_Array(nums1, nums2, m, n):
		one = m - 1
		two = n - 1
		totalLen = m + n -1
		
		while totalLen > 0:
			if nums1[one] < nums2[two]:
				nums1[totalLen] = nums2[two]
				two -= 1 
			else:
				nums1[totalLen] = nums1[one]
				one -= 1
			totalLen -= 1
		print(nums1)
nums1 = [1,2,3,0,0,0] 
m = 3
nums2 = [2,5,6]
n = 3
sortArray.Merge_Sorted_Array(nums1, nums2, m, n)

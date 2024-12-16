def Merge_Sorted_Array(nums1,m,nums2,n):
	
	totalLen = m+n-1
	lenM = m - 1
	lenN = n - 1

	while lenM>=0 and lenN>=0:

		if nums1[lenM] < nums2[lenN]:

			nums1[totalLen] = nums2[lenN]
			lenN -= 1

		else:
			nums1[totalLen] = nums1[lenM]
			lenM -= 1

		totalLen-=1

	print(nums1)

nums1 = [1,2,3,0,0,0]
m = 3
nums2 = [2,5,6]
n = 3
Merge_Sorted_Array(nums1,m,nums2,n)
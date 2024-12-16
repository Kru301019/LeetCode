def Intersection_of_Two_Arrays_II(smallNum, largeNum):

	largeNUmSet = set(largeNum)
	result = []
	for num in smallNum:
		if num in largeNUmSet:
			result.append(num)
	return result

nums1 = [4,9,5]
nums2 = [9,4,9,8,4]
if len(nums1) >= len(nums2):
	Intersection_of_Two_Arrays_II(nums2, nums1)
else:
	Intersection_of_Two_Arrays_II(nums1, nums2)
def Intersection_of_Two_Arrays(nums1, nums2):
		
		num1Set = set(nums1)
		num2Set = set(nums2)
		
		return list(num1Set & num1Set)		

nums1 = [1,2,2,1] 
nums2 = [2,2]

Intersection_of_Two_Arrays(nums1, nums2)

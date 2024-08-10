def Intersection_of_Two_Arrays(smallNum, largeNum):
    result = []
    for num1 in smallNum:
        if num1 in smallNum:
            if num1 not in result:
                result.append(num1)
    return result


nums1 = [1, 2, 2, 1]
nums2 = [2, 2]

if len(nums1) > len(nums2) or len(nums1) == len(nums2):
    output = Intersection_of_Two_Arrays(nums2, nums1)
else: 
    output = Intersection_of_Two_Arrays(nums1, nums2)

print(output)
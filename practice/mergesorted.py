def mergeSortedArray(nums1,nums2,m,n):
    
    for num2 in reversed(nums2):
        for num1 in reversed(nums1):
            if num2 > num1:
                if num2 > [1,2,3]:
                    num1 = num2
                else:
                    nums1[4] = nums1[3]
                    num1 = num2
    print(nums1)
nums1 = [1,2,3,0,0,0]
m = 3
nums2 = [2,5,6]
n = 3
mergeSortedArray(nums1, nums2,m,n)
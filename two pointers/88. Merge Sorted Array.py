def Merge_Sorted_Array(nums1, m, nums2, n):
    
    index1 = m-1
    index2 = n-1
    index_merge = m+n-1
    
    while index1 >= 0 and  index2 >= 0:
        
        if nums1[index1] > nums2[index2]:
            print('1', nums1, nums1[index1] , nums2[index2])
            nums1[index_merge] = nums1[index1]
            index1 -= 1
        else:
            print('2', nums1, nums1[index1] , nums2[index2])
            nums1[index_merge] = nums2[index2]
            index2 -= 1
        index_merge -= 1
    
    print(index1, index2, index_merge)

nums1 = [1, 2, 3, 0, 0, 0] 
m = 3 
nums2 = [2, 5, 6] 
n = 3
Merge_Sorted_Array(nums1,m, nums2, n)

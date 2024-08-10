def mergeArray(nums1, nums2, m, n):
    m -= 1
    
    for i in range(len(nums1)-1,0,-1):
        numsOne[i] = nums2[m]
        m-=1
        if i == n:
            break
    return nums1  
    

def sortArray(arrayToSort):
    for i in range(len(arrayToSort)):
        for j in range(i + 1, len(arrayToSort)):
            if arrayToSort[i] > arrayToSort[j]:
                arrayToSort[i], arrayToSort[j] = arrayToSort[j], arrayToSort[i]

        # Print statements for debugging
        print(f"Pass {i}: {arrayToSort}")


numsOne = [1, 2, 3, 0, 0, 0]
numsTwo = [2, 5, 6]
m = 3
n = 3

arraySort = mergeArray(numsOne, numsTwo,m,n)
sortArray(arraySort)

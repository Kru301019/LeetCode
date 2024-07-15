from collections import Counter


def getDuplicateI(myDict, num):
    for key, value in myDict.items():
        if key == num:
            return value

def Contains_Duplicate_II(nums, k):
    myDict = {}

    for i,num in enumerate(nums):
        if not num in myDict: 
            myDict[num] = i
        else:
            result = i - getDuplicateI(myDict, num)
            if result == k:
                return True
            else:
                myDict[num] = i
    
    return False
            

nums = [1, 2, 3, 1]
k = 3
print(Contains_Duplicate_II(nums, k))

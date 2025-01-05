def Frequent_Elements(nums, k):
    
    myDict = {}
    valuesOfDict = []
    for num in nums:
        if num not in myDict:
            myDict[num] = 1
        else:
            myDict[num] += 1
    
    for key, values in myDict.items():
        valuesOfDict.append(values)
    valuesOfDict.sort()

    result = []
    for value in valuesOfDict[-k:]:
        for key, values in myDict.items():
            if value == values:
                result.append(key)
    return result

nums = [1,3,3,3,3,2,2,5,5,5,5,5]
k = 2
Frequent_Elements(nums, k)
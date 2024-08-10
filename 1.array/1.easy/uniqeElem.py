from collections import Counter

def uniqueElem(nums):
    countDict = Counter(nums)
    for num,occur in countDict.items():
        for i in range(occur):
            print(occur)

nums = [0, 1, 2, 0, 1, 2, 2,2]
uniqueElem(nums)

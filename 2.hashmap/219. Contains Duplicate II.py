from collections import Counter

def Contains_Duplicate_II(nums, k):
    countDup = Counter(nums)
    dupNum = []
    for key, value in countDup.items():
        if value >= 2:
            dupNum.append(key)
    j=0
    while j != len(dupNum):
        for i,num in enumerate(nums):
            if num == dupNum[j]:
                print(j,i)
        j+=1


nums = [1, 2, 3, 1, 2, 3]
k = 3
Contains_Duplicate_II(nums, k)

from collections import Counter

def count_good_pairs(nums):
    nums_1 = Counter(nums).values()

    for k in nums_1:
        print(k, k * (k-1) // 2)

nums = [1,2,3,1,1,3]
count_good_pairs(nums)

#3 * (3-1) // 2
#3 (2)//2
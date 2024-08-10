def majorityElem(nums):
    nums.sort()
    n = len(nums)
    print(nums[n//2])


nums = [3, 2, 3]
majorityElem(nums)

def Remove_Duplicates_from_Sorted_Array_II(nums):
    j = 1
    for i in range(2,len(nums)):
     
        if nums[i]!=nums[j-1]:
            j+=1
            print('1st',nums)
            nums[j] = nums[i]
            print('2nd',nums)

nums = [12,12,13,13,13,13,14,15,15]
Remove_Duplicates_from_Sorted_Array_II(nums)

for i in range 
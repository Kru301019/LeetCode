def containsDuplicate(nums):

    seen = set()

    for i, num in enumerate(nums):
        #if num in seen:
            #return True
        print(seen)
        seen.add(num) 
    #return False

nums = [3,1,2,3,1]
containsDuplicate(nums)
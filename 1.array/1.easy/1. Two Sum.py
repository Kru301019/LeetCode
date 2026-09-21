def twoSum(Nums, target):

    seen = {}

    for i, x in enumerate(Nums):
        need = target - x
        
        if need in seen:
            print(seen[need], i)

        seen[x] = i

Nums = [3, 2, 4]
target = 6
twoSum(Nums, target)
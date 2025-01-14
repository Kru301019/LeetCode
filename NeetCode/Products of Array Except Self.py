class Solution:
    def product_of_array_expect_self(self, nums:list[int])->list[int]:
        
        res = [] 
        for i in range(len(nums)):
            local = 1
            for j in range(len(nums)):
                if i != j:
                    local *= nums[j]
            res.append(local)
        print(res)       

nums = [1,2,4,6]
solution = Solution()
solution.product_of_array_expect_self(nums)

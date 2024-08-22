def Product_of_Array_Except_Self(nums):
   
   n = len(nums)
   output = [1]*n
   
   for i in range(1,n):
      # print(output[i],output[i - 1] , nums[i - 1])
       output[i] = output[i - 1] * nums[i - 1]
   
   right_product = 1 
   for i in range(n - 1, -1, -1):
       print(output[i] , right_product)
       output[i]  = output[i] * right_product
       right_product = right_product* nums[i]

nums = [5,6,7,8]
Product_of_Array_Except_Self(nums)


















'''
from functools import reduce
def Product_of_Array_Except_Self(nums):
   
    productArray = []
    
    productArray.append(reduce(lambda x, y: x * y, nums[1:]))
    
    for i in range(len(nums)-2):
        j = i+1
        k = i+2
     
        product = reduce(lambda x, y: x * y,
                         nums[:j]) * reduce(lambda x, y: x * y, nums[k:])
        productArray.append(product)
    
   
    productArray.append(reduce(lambda x, y: x * y, nums[:len(nums)-1]))
    
    return productArray
'''

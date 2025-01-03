def Integer_to_Roman(nums: int) -> None:
    romanDict = {
        'I': 1,
        'V': 5,
        'IX': 9,
        'X': 10,
        'XL': 40,
        'L': 50,
        'C': 100,
        'D': 500,
        'M': 1000
    }
    
    romanNum = ''
   
    for key, value in reversed(list(romanDict.items())):
        
        count = nums // value
        romanNum += key*count
        nums %=  value
        
    print(romanNum)
               
nums = 3749
Integer_to_Roman(nums)

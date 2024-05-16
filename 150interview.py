''' #Two Sum
class twoSum:
    
    def __init__(self, nums, tareget):
        self.nums = nums
        self.target = tareget
    
    def findIndices(self):
        
        for i in range(len(self.nums)):
            for j in range(i+1, len(self.nums)):
                if self.nums[i] + self.nums[j] == self.target:
                        return [i,j]



nums = [2, 7, 11, 15]
target = 9

twoNumClass = twoSum(nums, target)
print(twoNumClass.findIndices()) '''

# Palindrome Number


''' class IsPalindrome:

    def __init__(self, num):
        self.num = num

    def isPalindrome(self):
        numString = str(self.num)

        counter = len(numString) - 1

        for i in range(len(numString)):
            if numString[i] != numString[counter]:
                return False
            counter = counter - 1
        return True

    def __str__(self):
        if self.isPalindrome():
            return f"{self.num} is a palindrome"
        else:
            return f"{self.num} is not a palindrome"


num = 121
checker = IsPalindrome(num)
print(checker) '''


''' def romanToInt(num):
    romanInt = {
        'I': 1,
        'V': 5,
        'X': 10,
        'L': 50,
        'C': 100,
        'D': 500,
        'M': 1000
    }
    count = 0
    for i in range(len(num)):
        if num[i] == 'V' and num[i-1] == 'I' or num[i] == 'X' and num[i-1] == 'I':
            count += romanInt[num[i]]
            print(count-2)
        else:
            
            count += romanInt[num[i]]
            print(count)
   
num = 'CL' #iv #15
(romanToInt(num)) '''

def checkString(s):
    stacks = []
    closeToOpen = {
                   '}':'{',
                   ')':'(',
                   ']':'['
                  }

    for c in s:
        if c in closeToOpen:
            if stacks and stacks[-1] == closeToOpen[c]:
                stacks.pop()
            else:
                return False
        else:
            stacks.append(c)
            
    return True if not stacks else False 

myString = '({})'
print(checkString(myString)) 

class roman2int:
    
    def __init__(self,s):
        self.s = s
        
    def convert(self):
        romanDict = {
            'I': 1,
            'V': 5,
            'X': 10,
            'L': 50,
            'C': 100,
            'D': 500,
            'M': 1000
        }

        output = 0
        length = len(self.s)

        for i in range(length):
            if i + 1 < length and romanDict[self.s[i]] < romanDict[self.s[i + 1]]:
            #     print('loop1 ---',i+1, length)
                output -= romanDict[self.s[i]]
            else:
            #     print('loop2 ---',i+1, length)
                output += romanDict[self.s[i]]

        return output

out =  roman2int('LVIII')
print(out.convert())
        












''' 
def romanToInt(myString):
    romanDict = {
        'I': 1,
        'V': 5,
        'X': 10,
        'L': 50,
        'C': 100,
        'D': 500,
        'M': 1000
    }

    output = 0
    length = len(myString)

    for i in range(length):
        if i + 1 < length and romanDict[myString[i]] < romanDict[myString[i + 1]]:
       #     print('loop1 ---',i+1, length)
            output -= romanDict[myString[i]]
        else:
       #     print('loop2 ---',i+1, length)
            output += romanDict[myString[i]]

    return output


s = 'LVIII'
print(romanToInt(s))
 '''

    
    
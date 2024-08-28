from collections import Counter
def Longest_Substring_Without_Repeating_Characters(s):
    
    for i in range(len(s)+1):
        x = len(s)
        for j in range(i):
            myVal =s[i-j-1:x]
            countMyVal = Counter(myVal)
            if all(value ==1 for value in countMyVal.values()):
                result = len(countMyVal)
                return (result)
                
            x-=1
                          
s = "pwwkew"
print(Longest_Substring_Without_Repeating_Characters(s))

def countString(threeString):
    myDict = {}
    for i in threeString:
        if i in myDict:
            myDict[i] += 1
        else:
            myDict[i] = 1
    return 1 if  len(myDict) == 3 else 0


def Substrings_of_Size_Three(s):
    maxArrayForm = len(s)-3+1
    result = 0
    
    for i in range(maxArrayForm):     
       result+=countString(s[i:i+3])
    
    return result
        
s = "aababcabc"
Substrings_of_Size_Three(s)

def ReverseStringII(myS, k):
    
    stringArray = list(myS)
    lastElem = k-1
    
   
    for i in range(k//2):
        stringArray[i], stringArray[lastElem] = stringArray[lastElem], stringArray[i]
        lastElem -= 1
   
    return ''.join(stringArray)

myS = "abcdefg"
k = 4
ReverseStringII(myS, k)

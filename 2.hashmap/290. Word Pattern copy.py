def wordPattern(pattern, myString):
    myStringSplit = myString.split()
    
    patternLen = len(pattern)
    myStringLen = len(myStringSplit)
    
    if not patternLen == myStringLen :return False
    
    myDict = {}
    
    for i in range(patternLen):
        if not pattern[i] in myDict:
            myDict[pattern[i]] = myStringSplit[i]
        else: 
            if not myDict[pattern[i]] == myStringSplit[i]:return False
  
    return True

pattern = "abab"
myString = "dog cat dog cat"
print(wordPattern(pattern, myString))


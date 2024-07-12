def chekLen(patternLen):
    counter = 0
    for i in myString:
        if i == ' ':
            counter += 1
    return counter+1
        
def getMyDict():
    myDict = {}
    addString = ''
    up = 0
  
    for i in myString:
            
            print(pattern[up])
            if i != ' ':
                addString += i
                myDict[pattern[up]] = addString

            if i == ' ':
                addString = ''
                up += 1
    return myDict
    
def wordPattern(pattern, myString):
    patternLen = len(pattern)
    myStringLen = len(myString)
    
    if not patternLen == chekLen(patternLen):return False
    myDict = getMyDict()
    print(myString.split())


pattern = "abcd"
myString = "dog cat cat fish"
(wordPattern(pattern, myString))


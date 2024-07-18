def getMinMaxWrod(myLen):
    if myLen == len(word1):
        return word1
    else:
        return word2

def MergeStringsAlternately(wordS1, wordS2):
    result = ''
    flag = True
    
    counterOne = 0
    counterTwo = 0
    
    myLenMin = min(len(wordS1), len(wordS2))
    myLenMax = max(len(wordS1), len(wordS2))
    
    if myLenMin != myLenMax:
        minWrod = getMinMaxWrod(myLenMin)
        maxWord = getMinMaxWrod(myLenMax)
    else:
        minWrod = wordS1
        maxWord = wordS2
    
    
    for _ in range((myLenMin)*2):
         if flag:
             result += minWrod[counterOne]
             flag = False
             counterOne+=1
             
         else:
            result += maxWord[counterTwo]
            flag = True
            counterTwo=+1
    
    if not myLenMin == myLenMax:
        diffrence = myLenMax-myLenMin
        result += maxWord[diffrence:]
        return result
    
    return result


word1 = "cd"
word2 = "ab"

print(MergeStringsAlternately(word1, word2))

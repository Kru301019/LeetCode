def Reverse_Vowels_String(myString):
    vowels = 'aeiou'
    catchVowels = ''
    for s in reversed(myString):
        if s in vowels or s in vowels.upper():
            catchVowels += s
    stringArray = list(myString)
    up = 0
    for i in range(len(stringArray)):
        if stringArray[i] in vowels or stringArray[i]   in vowels.upper():
            stringArray[i] = catchVowels[up]
            up+=1
    
    return "".join(stringArray)
   
    
myString = "leetcodE"
print(Reverse_Vowels_String(myString))

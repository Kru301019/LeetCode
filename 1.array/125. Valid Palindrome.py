def validPalind(strings):
    strings = strings.lower()
    newString = ''
    for string in strings:
    
        if string.isalpha():
            newString += string
    
    counter = 0
    isValid = True
    for i in range(len(newString)-1,-1,-1):
        if newString[i] != newString[counter]:
            isValid = False
        counter+=1
    if isValid:
        return 'string is palindrome'
    else:
        return 'string is not palindrome'
    

strings = "race a car"
print(validPalind(strings))

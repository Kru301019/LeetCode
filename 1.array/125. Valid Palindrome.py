def validPalind(strings):
    strings = strings.lower()
    strings = strings.replace(" ","")
    print(strings[:len(strings)] , strings[len(strings):0])
    #return strings[:len(strings)] == strings[len(strings):]
    
    
strings = "aba"
print(validPalind(strings))

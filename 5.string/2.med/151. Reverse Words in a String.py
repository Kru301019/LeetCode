def Reverse_Words_String(myString):
    myString = myString.strip()
    myArray = []
    count = 0
    
    for i in range(len(myString)):
        
        if myString[i] == ' ':
            if count != i:
                myArray.append(myString[count:i])
            count = i+1
    myArray.append(myString[count:])
    print(myArray)
    return ' '.join(reversed(myArray))
   

myString = "a good   example"
Reverse_Words_String(myString)

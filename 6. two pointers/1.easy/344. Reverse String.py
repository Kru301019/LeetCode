def Reverse_String(myString):
    j = len(myString)-1

    for i in range(len(myString)//2):
        myString[i], myString[j] = myString[j], myString[i]
        j-=1
    return myString


myString = ['h','e','l','l','o']
Reverse_String(myString)
'''
o e l l h
o l l e h
o l e l h
o l l e h 
'''
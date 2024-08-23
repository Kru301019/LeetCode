def IsomorphicStrings(first, second):
    
    if not len(first) == len(second):return False
    dictForT = {}
 
    for i in range(len(first)):
        if not first[i] in dictForT:
            dictForT[first[i]] = second[i]
        if dictForT[first[i]] != second[i]:
            return False
    return True
        

first = "egg"
second = "add"

print(IsomorphicStrings(first, second))

'''
dictForT['b'] = 'r'
egg

add
edd
egg

# if dictForT[first[i]] != second[i]:
     
            #    print(dictForT)
'''
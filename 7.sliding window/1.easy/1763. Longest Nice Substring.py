def Longest_Nice_Substring(s):
    countDict = {}
    
    for i in s:
        if i in countDict:
            countDict[i]+=1
        else:
            countDict[i]=1
    print(countDict)


s = "YazaAay"
Longest_Nice_Substring(s)
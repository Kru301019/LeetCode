def findFirstOccu(haystack, needle):
    myLen = len(haystack) - len(needle)
    needleLen = len(needle)
    
    for i in range(myLen+1):
        if haystack[i: i+needleLen] == needle:
            return i
        
    
    return -1


haystack = "leetcode"
needle = "leeto"
print(findFirstOccu(haystack,needle))

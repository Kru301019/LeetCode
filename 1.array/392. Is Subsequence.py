def isSubSeq(sub, whole):
    
    for i in sub:
        if i not in whole:
            return False
    return True       
    
    


s = "abc"
t = "ahbgdc"
print(isSubSeq(s, t))

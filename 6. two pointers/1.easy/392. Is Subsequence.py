def Is_Subsequence(subSeq, whole):
    sub=hol=0
    
    while sub<len(subSeq) and hol<len(whole):
        if subSeq[sub] == whole[hol]:
            sub+=1
        hol+=1
    
    return len(subSeq)== sub
        
            
subSeq = "abc"
whole = "ahbgdc"
Is_Subsequence(subSeq, whole)

'''
  j = 0
    compareString = ''
    for sub in subSeq:
        for i in range(j,len(whole)):
            if sub == whole[i]:
                compareString += sub
                j=i+1
                break
    
    return subSeq==compareString
'''
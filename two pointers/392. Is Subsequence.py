def Is_Subsequence(subSeq, whole):
    j = 0
    compareString = ''
    for sub in subSeq:
        for i in range(j,len(whole)):
            if sub == whole[i]:
                compareString += sub
                j=i+1
                break
    
    return subSeq==compareString
        
            
subSeq = "abc"
whole = "ahbgdc"
Is_Subsequence(subSeq, whole)

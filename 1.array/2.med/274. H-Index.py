def H_Index(citations):

    for i in range(len(citations)):
        count = 0
        for j in range(len(citations)):
            myMin = min(citations[i], citations[j])
            if myMin == citations[i]:
                count+=1
        if myMin == count:
                return myMin
       
citations = [3, 0, 6, 1, 5]
H_Index(citations)


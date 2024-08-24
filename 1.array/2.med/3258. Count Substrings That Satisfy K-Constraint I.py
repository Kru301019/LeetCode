from collections import Counter
def checkConstrain(array, k):
    
    countBits=Counter(array)
    if countBits['1']<=k or countBits['0']<=k:
        return 1
    return 0
            
def Count_Substrings_That_Satisfy(s,k):
    n = len(s)
    lenDown = 0
    result = 0
    for i in range(n):
        counter = n
        for j in range(n-lenDown):
            result+=checkConstrain(s[i:counter], k)
            counter-=1
        lenDown+=1
    print(result)     


s = "1010101"
k = 2
Count_Substrings_That_Satisfy(s, k)
 

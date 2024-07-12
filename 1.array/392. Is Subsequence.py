def isSubSeq(sub, whole):
   jLen = 0
   counter = 0
   for i in range(len(sub)):      
        for j in range(jLen,len(whole)):
          if sub[i]==whole[j]:
              counter+=1
              jLen = j
    
   if counter == len(sub):
       return True
   else:
       return False


s = "abdc"
t = "habgcgdhj"
print(isSubSeq(s, t))

def Is_Subsequence(s, t):
	
	start = 0
	for i in range(len(s)):
		
		isSUb = False
		for j in range(start,len(t)):
			
			if s[i] == t[j]:
						
				start=j+1
				isSUb=True
				break
		if not isSUb:
			return isSUb
	print(isSUb)


s = "abc"
t = "ahbgdc"
Is_Subsequence(s, t)
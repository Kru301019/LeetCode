def Is_Subsequence(s, t):

	up = 0
	left = 0
	
	while left < len(t):
		
		if up<len(s) and s[up] == t[left]:
			
			up+=1
		left+=1
	return len(s) ==up

s = "abc"
t = "ahbgdcd"
print(Is_Subsequence(s, t))

'''
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
	
	return False
'''
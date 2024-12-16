def validAnagram(s:str, t:str)->bool:
	
	myDict = {}
	
	for i,t_char in enumerate(t):
		if not t_char in myDict:
			myDict[t_char] = 1
		else:
			myDict[t_char] += 1  
	
	for i,s_char in enumerate(s):
		
		if not s_char in myDict:
		  		return False
		
		myDict[s_char]-=1
	
s = "rat"
t = "car"
print(validAnagram(s, t))
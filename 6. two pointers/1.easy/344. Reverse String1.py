def Reverse_String(s):
	
	revrs = len(s) - 1
	
	for i in range (len(s)//2):

		s[i],s[revrs] = s[revrs],s[i]
		revrs-=1
	
s = ["h","e","l","l","o"]
Reverse_String(s)
'''
["h","e","l","l","o"]
["o","e","l","l","h"]
["o","l","l","e","h"]


["H","a","n","n","a","h"]
["h","a","n","n","a","H"]
["h","a","n","n","a","H"]

'''
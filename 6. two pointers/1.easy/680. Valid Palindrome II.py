def Valid_Palindrome_II(s):
	
	for i in range(len(s)):
		myString = ''
		for j in range(len(s)):
			if i != j:
				myString += s[j]
		return myString == myString[::-1]
	return False		

s = "abca"
Valid_Palindrome_II(s)
'''
1
s[1]
s[2]
s[3]

2
s[0]
s[2]
s[3]

3
s[0]
s[1]
s[3]


'''
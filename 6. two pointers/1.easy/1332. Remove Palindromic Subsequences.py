'''
def checkPalindrome(myString):
	print(myString, myString[::-1])
	return myString == myString[::-1]
'''
def Remove_Palindromic_Subsequences(s):
	if s == s[::-1]:
		return 1
	else:
		return 2
			
	
s = "baabb"
Remove_Palindromic_Subsequences(s)
#edcba

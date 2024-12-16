class solution:
	def isPalindrome(self, s):

		s = s.replace(" ", "").lower()
		s = ''.join(char for char in s if char.isalpha())
		return s == s[:-1]

s = "race a car"
sol = solution()
sol.isPalindrome(s)
#o(n)
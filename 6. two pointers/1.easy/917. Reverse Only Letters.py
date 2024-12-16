def Reverse_Only_Letters(s):
	s = list(s)
	left = 0
	right = len(s)-1

	while left < right:
		if not s[left].isalpha():
			left += 1
		if not s[right].isalpha():
			right -= 1
		
		s[left], s[right] = s[right], s[left]

		right-=1	
		left+=1
	return ''.join(s)

s = "Test1ng-Leet=code-Q!"
print(Reverse_Only_Letters(s))

def checkString(myString):
	count = 0
	newS = ''
	for i in range(len(myString)-1,-1,-1):
		
		if myString[i] == '#':
			count += 1
		else:
			if count == 0:
				newS += myString[i]	
			else:
				count -= 1
	return newS

def Backspace_String_Compare(s, t):
	return checkString(s) ==checkString(t)
	
s = "ab##c"
t = "ad#c"
Backspace_String_Compare(s, t)

stack = []
for char in s:
	if char != '#':
		stack.append(char)
		print(stack)
	elif stack:

		stack.pop()
		
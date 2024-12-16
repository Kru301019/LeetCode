def Reverse_Words_in_a_String_III(s):
	list_s = s.split()
	result = []
	for char in list_s:
		result.append(char[::-1])

	return ''.join(result)

s = "Let's take LeetCode contest"
Reverse_Words_in_a_String_III(s)
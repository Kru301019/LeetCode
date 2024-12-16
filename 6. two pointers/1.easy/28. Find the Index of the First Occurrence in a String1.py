def Find_of_first_occur(haystack, needle):
	lenHay = len(haystack)
	lenNeedle= len(needle)

	for i in range (lenHay-lenNeedle+1):
		if needle==haystack[i:i+lenNeedle]:
			return i
	
	return -1

haystack = "sadbutsad"
needle = "sad"
Find_of_first_occur(haystack, needle)
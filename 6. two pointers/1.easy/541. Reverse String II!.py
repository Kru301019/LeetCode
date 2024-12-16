def Reverse_String_II(s, k):
	
	if len(s) < k:return s[::-1]
	
	sList = list(s)
	left = 0
	k-=1
	
	while left<k:
		sList[left], sList[k] = sList[k], sList[left]
		left+=1
		k-=1

	return ''.join(sList)

s = "ab"
k = 4
Reverse_String_II(s, k)
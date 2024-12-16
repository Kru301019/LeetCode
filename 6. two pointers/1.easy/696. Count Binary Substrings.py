def Count_Binary_Substrings(s):
	group = []
	count = 1

	for i in range(1, len(s)):
		
		if s[i] == s[i-1]:
			count += 1
		else:
			group.append(count)
			count = 1
	group.append(count)

	result = 0
	print(group)
	for i in range(1,len(group)):
		print(min( group[i], group[i-1]) )

s = "100101"
Count_Binary_Substrings(s)
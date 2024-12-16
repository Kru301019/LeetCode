def Isomorphic_Strings(s: str, t: str) -> bool:

	map_s_to_t = {}
	map_t_to_s = {}

	for char_s,char_t in zip(s, t):
		if char_s in map_s_to_t:
			if map_s_to_t[char_s] != char_t:
				print(False,map_s_to_t, map_s_to_t[char_s], char_t)
		else:
			map_s_to_t[char_s] = char_t
			print(True,map_s_to_t)
s = "foo"
t = "bar"
Isomorphic_Strings(s, t)
#time complexity o(n)^2
#space complexity = o(n)
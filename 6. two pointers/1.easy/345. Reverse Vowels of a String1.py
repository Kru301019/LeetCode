def Reverse_Vowels_of_a_String(s):
 	vowels = set('aeiouAEIOU')
 	s = list(s)

 	left, right = 0, len(s) - 1

 	while left < right :
 		
 		if s[left] not in vowels:
 			left+=1
 			continue

 		if s[right] not in vowels:

 			right-=1
 			continue
 	
 		s[left],s[right] = s[right],s[left]
 		left += 1
 		right -= 1

 	


s = "IceCreAm"
Reverse_Vowels_of_a_String(s)
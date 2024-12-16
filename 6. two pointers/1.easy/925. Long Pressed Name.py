from collections import Counter
def Long_Pressed_Name(name, typed):
	name_dict = Counter(name)
	typed_dict = Counter(typed)
	
	for values in name_dict:
		if name_dict[values]>typed_dict[values]:
			return False
	return True
			

name = "alex"
typed = "aaleex"
Long_Pressed_Name(name, typed)
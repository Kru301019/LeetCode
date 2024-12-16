def Flipping_an_Image(image):

	for array in image:
		array.reverse()
		for i in range (len(array)):
			array[i] = 1 - array[i]
	return image
	
		
image = [[1,1,0],[1,0,1],[0,0,0]]
Flipping_an_Image(image)

'''
for i in range(len(myArray)):
		if myArray[i] == 0:
			myArray[i] = 1
		else:
			myArray[i] = 0
	return myArray
		

def Flipping_an_Image(image):
	
	for i,array in enumerate(image):
		  image[i] = reverseArry(array[::-1])
	return image
'''
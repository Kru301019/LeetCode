def checkEmpty(flowerbed, n):
    
    

def Can_Place_Flowers(flowerbed, n):
    
    count = 0
    
    for i in range(len(flowerbed)):
        
        if flowerbed[i] == 0:
            prevEmpty = checkEmpty(flowerbed, n)
            nextEmpty = checkEmpty(flowerbed, n)
        

flowerbed = [ 1, 0, 1, 0]
n = 1
Can_Place_Flowers(flowerbed, n)

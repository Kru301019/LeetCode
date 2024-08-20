def checkEmpty(flowerbed,i):
    if i == 0 :
        return flowerbed[i+1] == 0
    elif i == len(flowerbed) - 1:
        return flowerbed[i-1] == 0
    else:
        return flowerbed[i-1] == 0 and flowerbed[i+1] ==0
        
      
def Can_Place_Flowers(flowerbed, n):
    
    count = 0

    for i in range(len(flowerbed)):
        
        if flowerbed[i] == 0:
            ifEmpty = checkEmpty(flowerbed,i)
           
            if ifEmpty:
                flowerbed[i] = 1
                count+=1
                if count >= n:
                    return True
    return  count >= n
    
flowerbed = [ 1, 0, 0, 0, 1]
n = 1
Can_Place_Flowers(flowerbed, n)

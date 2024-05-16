def mergeInSort(one,two):
    
    one += two
    print(one)    
    for _ in range(len(one)):
        for j in range(len(one)-1):
          if one[j] > one[j+1]:
              one[j], one[j+1] = one[j+1] , one[j]
    print(one)
listOne = [1, 2, 4]
listTwo = [1, 3, 4]

mergeInSort(listOne, listTwo)


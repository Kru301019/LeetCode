def List_Comprehensions(x, y, z, n):
    
    result = []
    for i in range(x + 1):
        for j in range(y + 1):
           for k in range(z + 1):
               if not i + j + k == n:
                result.append([i, j, k])
    return result

x,y,z = 1,1,1
n = 3
List_Comprehensions(x, y, z, n)
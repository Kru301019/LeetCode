def Special_Positions_Matrix(mat):
    m = len(mat)
    n = len(mat[0])
    rowCount = [0] * m
    colCount = [0] * n
    
    for i in range(m):
        for j in range(n):
            if mat[i][j] == 1:
                rowCount[i]+=1
                colCount[j]+=1
            
    specialCount = 0
    print(rowCount, colCount)
    for i in range(m):
        for j in range(n):
            if mat[i][j] == 1 and rowCount[i] == 1 and colCount[j] == 1:
                print(i,j)


mat =  [
             [1, 0, 0, 0], 
             [0, 0, 1, 0], 
             [1, 0, 0, 1]
             ]
Special_Positions_Matrix(mat)
'''
00 01 02
00 10 12

12 02 03
12 11 10
'''
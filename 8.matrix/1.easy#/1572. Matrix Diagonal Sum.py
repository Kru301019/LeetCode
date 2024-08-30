def Matrix_Diagonal_Sum(mat):
   
    n = len(mat)
    secondDia = n-1
    sumOne=0
    sumTwo=0
    for i in range(n):
        sumOne+=(mat[i][i])
        sumTwo+=(mat[i][secondDia])
        secondDia-=1
    
    if n%2==0:
        return sumOne+sumTwo
    else:
        return sumOne+sumTwo -mat[n//2][n//2]
        

mat = [
       [1, 1, 1, 1],
       [1, 1, 1, 1],
       [1, 1, 1, 1],
       [1, 1, 1, 1]
                    ]
print(Matrix_Diagonal_Sum(mat))

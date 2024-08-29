def Largest_Local_Values_Matrix(grid):
  
   
    for i in range(len(grid)):
        innerLen = len(grid[i])
        for j in range(innerLen):
            print(grid[i][j])
        print('-------')
grid = [
        [1], 
        [1, 2], 
        [1, 2, 3], 
        [1, 2]]

Largest_Local_Values_Matrix(grid)

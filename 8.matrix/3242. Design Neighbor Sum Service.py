import pprint

def getPosition(grid):
    n = len(grid)
    position = {}
    for i in range(n):
        for j in range(n):
            position[grid[i][j]] = (i, j)
    return position
    

def adjacentSum(grid, value, position):
    x,y = position[value]
    n = len(grid)
    adjacent_sum = 0
    
    for dx, dy in [(-1, 0), (1, 0), (0, -1), (0, 1)]:
        nx, ny = dx+x, dy+y
        if 0 <= nx < n and 0 <= ny < n:
            adjacent_sum += grid[nx][ny]
    return adjacent_sum

def dignosalSum(grid, value, position):
    x, y = position[value]
    n = len(grid)
    dignosal_sum = 0
    for dx, dy in [(-1, -1), (-1, 1), (1, -1), (1, 1)]:
        nx, ny = dx+x, dy+y
        if 0 <= nx < n and 0 <= ny < n:
            adjacent_sum += grid[nx][ny]
    return adjacent_sum
grid = [
    [1, 2, 0, 3], 
    [4, 7, 15, 6], 
    [8, 9, 10, 11], 
    [12, 13, 14, 5]
 ]

position = getPosition(grid)
adjacentSum(grid, 4, position)


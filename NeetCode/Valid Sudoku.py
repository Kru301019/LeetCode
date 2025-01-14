class Solution:
    def isValidSudoku(self, board: list[list[str]]) -> bool:
   
        for i in range(len(board)):
            row = ''
            col = ''
            for j in range(len(board)):
                pass
                '''
                if board[i][j] in row and board[i][j] != '.':return False
                row += board[i][j]
                
                if board[j][i] in col and board[j][i] != '.':return False
            
                col += board[j][i]
                '''
        for i in range(len(board)):   
            localBoard = board[i][0:3]
            
            for j in range(len(localBoard)):
                print(localBoard[j],i)

Input = [["1","2",".",".","3",".",".",".","."],
        ["4",".",".","5",".",".",".",".","."],
        [".","9","8",".",".",".",".",".","3"],
        ["5",".",".",".","6",".",".",".","4"],
        [".",".",".","8",".","3",".",".","5"],
        ["7",".",".",".","2",".",".",".","6"],
        [".",".",".",".",".",".","2",".","."],
        [".",".",".","4","1","9",".",".","8"],
        [".",".",".",".","8",".",".","7","9"]]

solution = Solution()
solution.isValidSudoku(Input)
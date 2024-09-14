def Zigzag_Conversion(s, numRows):
    '''print(
    s[0],         s[6],              s[12],
       s[1],    s[5], s[7],      s[11],   s[13],
        s[2],s[4],        s[8],s[10],
           s[3],            s[9])
    '''       
    rows = [''] * numRows
    current_row = 0
    going_down = False

    for char in s:
        rows[current_row] += char
        print(current_row)
        if current_row == 0 or current_row == numRows - 1:
            going_down = not going_down
            print('--------------')
   
        current_row += 1 if going_down else -1

        

s = "PAYPALISHIRING"
numRows = 4
Zigzag_Conversion(s, numRows)

'''
"PINALSIGYAHRPI"
'''
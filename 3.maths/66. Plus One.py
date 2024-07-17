def plusOne(digits):
    i = len(digits)-1
    if all(num == 9 for num in digits):return [1]+[0]*len(digits)

    while i > -1:
        if digits[i] != 9:
            digits[i] +=1
            break
        else:
            digits[i] = 0
        i-=1
    return digits
    

digits = [9,9]
print(plusOne(digits))
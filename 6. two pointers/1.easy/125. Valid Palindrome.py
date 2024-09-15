def Valid_Palindrome(s):
    s = s.lower()
    sUpdate = ''
    for char in s:
        if char.isalpha():
            sUpdate += char
    
    return sUpdate == sUpdate[::-1]

s = "A man, a plan, a canal: Panama"
print(Valid_Palindrome(s))
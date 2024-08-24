def gcd(a):
    i = a
    myArray = []
    while i:
        if a%i == 0:myArray.append(i)
        i-=1
    return myArray
 
   

def Greatest_Common_Divisor_of_Strings(str1, str2):
    if str1 + str2 != str2 + str1:
        return ""
    
    array1,array2 = gcd(len(str1)),gcd(len(str2))
    gcdArray = list(set(array1) & set(array2))

    result = 1
    for num in gcdArray:
        
        result *=num
    return str1[:result]
        
    
str1 = "ABABAB"
str2 = "ABAB"
print(Greatest_Common_Divisor_of_Strings(str1, str2))
'''
2 * 2= 4
2 * 3 = 6
'''
from collections import Counter
def String_Compression(chars):
    
    countChars = Counter(chars)
    
    for key,value in countChars.items():
        for _ in range(value-1):
            chars.remove(key)
    
    valueArray = []
    for values in countChars.values():
        valueArray.append(values)
    
    count = 1
    for i in range(len(chars)):
       
        chars.insert(count, valueArray[i])
        count += 2
    
    print(chars)

chars = ["a", "a", 'a', "b", "b", "c", "c", "c"]
String_Compression(chars)
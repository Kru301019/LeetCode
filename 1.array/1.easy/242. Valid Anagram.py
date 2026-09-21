def validAnagram(first, second):
    
    if len(first) != len(second) : return False

    count = {}

    for i in first:
        if i not in count:
            count[i] = 1
        else:
            count[i] += 1

    
    for x in second:
        if x not in count:
            return False
        else:
           count[x] -= 1
           if count[x] == 0:count.pop(x)

    return not count

s = "anagram"
t = "nagaram"
validAnagram(s, t)

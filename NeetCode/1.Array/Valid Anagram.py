def Valid_Anagram(s:str, t:str) ->bool:
    
    if len(s) != len(t):return False
    build_string = []
    s = list(s)
    t = list(t)
    for i,word1 in enumerate(s):
        for j,word2 in enumerate(t):
            if word1 == word2:
                
                build_string.append(s[i])
                t[j] = '£'
                
                break
    if build_string == s:
        return True
    return False
    
s = "jar"
t = "jam"
Valid_Anagram(s, t)
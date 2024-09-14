def Reverse_Words_String(s):
    s = s.rstrip()
    s = s.split()
    result = ''
    
    result = ' '.join(reversed(s))
    
    return result


s = "a good   example"
Reverse_Words_String(s)

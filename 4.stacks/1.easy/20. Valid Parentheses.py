def Valid_Parentheses(s):
    
    myDIct = {
              '}':'{',
              ']':'[',
              ')':'('
                    }
    my_stack = []
    
    for i in s:
        if i in myDIct:
            if my_stack: ##if my stakc is not empty
                top_element = my_stack.pop()
                
            else:  # if my stakc IS empty
                top_element = '#'
                
            if myDIct[i] != top_element:
                return False
        else:
            my_stack.append(i)
    
    return not my_stack
    
s = "{}"
print(Valid_Parentheses(s))

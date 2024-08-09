def H_Index(citations):
   
    citations.sort(reverse=True)
   
    result = 0
    for i, num in enumerate(citations):
       if num >= i + 1:
    
           result = i + 1
       else:
            break

    print(result)
    
citations = [25, 8, 5, 3, 3]
H_Index(citations)

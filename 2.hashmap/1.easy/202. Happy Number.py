def happyNumber(n:int) ->bool:
    seen = set()
    while n != 1 and n not in seen:
        seen.add(n)
        n = sum(int (char)**2 for char in str(n)) 
    print(seen)

n = 19
happyNumber(n)

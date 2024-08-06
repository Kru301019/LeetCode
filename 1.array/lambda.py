


#def x(a, b, c): return a + b + c

x = lambda a,b,c:a+b+c
print(x(5, 6, 2))

def myfunc(n):
      return lambda a : a * n

mytripler = myfunc(4)

print(mytripler(5))

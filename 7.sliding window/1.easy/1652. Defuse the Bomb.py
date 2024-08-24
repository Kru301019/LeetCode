def Defuse_the_Bomb(code, k):

  count = 0
  defuseCode = []
  for i in range(len(code)):
      for j in range(k):
          count += code[(i+j) % len(code)]
          
      defuseCode.append(count)
      count=0

  print(defuseCode)


code = [2, 4, 9, 3]
k = 2
Defuse_the_Bomb(code, k)


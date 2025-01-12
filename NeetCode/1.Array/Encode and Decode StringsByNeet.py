class Solution:
    def encode(self, input:list[str]) -> str:
        res = ""
        for s in input:
            res += str(len(s))+ s
        return res
    
    def decode(self, incoded:str) -> list:
        res = []
        j = 0
        i = 0
        k = 0
   
        while i  < len(incoded):
            
            j = int(incoded[i]) + 1
            k += j
            res.append(incoded[i+1:k])
            i += j 
        print(res)            

Input = ["neet", "code", "###love", "you"]
solution = Solution()
incoded = solution.encode(Input)
solution.decode(incoded)
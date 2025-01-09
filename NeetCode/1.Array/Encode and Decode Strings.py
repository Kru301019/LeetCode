class Solution:

    def __init__(self, input):
        self.input = input

    def Decode_Strings(self):
        self.decodedString = ''
        for string in self.input:
            if not ' ' in string:
                self.decodedString += string + ' '
            else:
                noSpaceStrng = ''
                for word in string:
                    if word.isalpha():
                        noSpaceStrng+=(word)
                self.decodedString += noSpaceStrng + ' '
      
        return self.decodedString

    def incoded_string(self, decodedString):
        self.incoded = []
        start = 0
               
        flag = False
        for i in range(len(decodedString)):
            if  decodedString[i].isalpha():
           
                flag = True
            else:
                if flag:
                    self.incoded.append(decodedString[start:i])
                start = i+1
                flag = False
        
        if  flag:
           self.incoded.append(decodedString[start:])
        return self.incoded
            
Input = ["  neet"," code","love","you"]
solution = Solution(Input)
decode = solution.Decode_Strings()
encoded = solution.incoded_string(decode)

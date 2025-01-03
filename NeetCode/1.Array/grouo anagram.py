class Result:
    def __init__(self, strs):
        self.strs = strs
    
    def sortAnagram(self):
        seenLen = []
        for anagram in self.strs:
            if len(anagram) not in seenLen:
                seenLen.append(len(anagram))
        seenLen.sort()    
        sortedAnagram = []
        for i in seenLen:
            for anagram in self.strs:
                if i == len(anagram):
                    sortedAnagram.append(anagram)
        return sortedAnagram
    
    def validAnagram(self, s1, s2):
        buildString = []
        s1 = list(s1)
        s2 = list(s2)
        for i,w1 in enumerate(s1):
            for j,w2 in enumerate(s2):
                if w1 == w2:
                    buildString.append(s2[j])
                    s2[j] = '£'
                    
        return s1 == buildString

    def oneAnagram(self, oneAna):
        start = 0
        anaGram = []
        notanaGram = []
        wholeAnagram = []
        for i in range(len(oneAna)):
            isValid = self.validAnagram(oneAna[start], oneAna[i])
            if isValid:
               anaGram.append(oneAna[i])
            else:
                notanaGram.append(oneAna[i])
       
        if not notanaGram:
             wholeAnagram.append(anaGram)
        else:
            wholeAnagram.append(notanaGram)
         
        return wholeAnagram   
    
    def groupAnagram(self):
        result = []
        self.strs= self.sortAnagram()
        start = 0
        for i in range(len(self.strs)-1):
            if len(self.strs[i]) != len(self.strs[i+1]):
                result.append(self.oneAnagram(self.strs[start:i+1]))
                start = i+1
        result.append(self.oneAnagram(self.strs[start:]))
        print(result)

strs = ["act","pots","tops","cat","stop","hat"]
result = Result(strs)
result.groupAnagram()
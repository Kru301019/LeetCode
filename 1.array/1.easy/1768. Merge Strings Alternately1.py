def Merge_Strings_Alternately(word1, word2):
    smallWord=''
    largeWord =''
    output = ''
    smallWord = word1 if len(word1) <= len(word2) else word2
    largeWord = word1 if len(word1) > len(word2) else word2
   
  
    for i, j in zip(smallWord, largeWord):
        output += i + j
    
    return output+largeWord[len(smallWord):]


word1 = "pqrs"
word2 = "ab"

Merge_Strings_Alternately(word1, word2)

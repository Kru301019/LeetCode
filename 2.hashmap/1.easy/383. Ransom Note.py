from collections import Counter


def ransomNote(ransomNote, magazine):
    
    ransom_count = Counter(ransomNote)
    magazine_count = Counter(magazine)
    
    

    # Check if each character in the ransom note can be constructed from the magazine
    for char, count in ransom_count.items():
        print(magazine_count[char],count)
        if magazine_count[char] < count:
            return False

    return True



#(ransomNote("a", "b"))         
(ransomNote("aa", "ab"))       
#(ransomNote("aa", "aab"))      

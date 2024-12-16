def Ransom_Note(a, b):
    # Convert the lists to strings (if needed, you can keep them as lists)
    keeper = ''
    
    for char in a:
        found = False  # Track if the character is found
        for j in range(len(b)):
            if char == b[j]:
                # If found, mark it and break out of the loop
                keeper += char  # Add the character to keeper
                b[j] = None  # Mark this character as used
                found = True
                break
        
        if not found:
            return False  # If any character is not found, return False
    
    return True  # If all characters are found, return True

# Test cases
ransomNote = ['a', 'k', 'a']
magazine = ['a', 'b', 'a', 'k']
print(Ransom_Note(ransomNote, magazine))  # Output: True

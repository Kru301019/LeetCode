def reverseWord(myString):
    
    myString = myString.strip()
    words = myString.split()
    result = []
    
    for word in reversed(words):
        result.append(word)
        result.append(' ')
    
    if result:
        result.pop()
    resultString = ''
    for s in result:
        resultString += s
    return resultString

myString = "  hello world  "
reverseWord(myString)


def reverseWords(s: str) -> str:
    # Step 1: Trim the string and split by spaces
    words = s.strip().split()

    # Step 2: Reverse the list of words
    reversed_words = words[::-1]

    # Step 3: Join the words with a single space
    result = ' '.join(reversed_words)

    return result


# Test cases
s1 = "the sky is blue"
s2 = "  hello world  "
s3 = "a good   example"

print(reverseWords(s1))  # Output: "blue is sky the"
print(reverseWords(s2))  # Output: "world hello"
print(reverseWords(s3))  # Output: "example good a"

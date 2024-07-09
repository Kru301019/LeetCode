def lenOfLastWord(s):
    j = 0
    counter = 0
    for i in range(len(s)-1, -1, -1):

        if s[i].isalpha():
            counter += 1
        if s[j].isalpha() and s[i] == ' ':
            break
        j = i

    return counter


s = "   fly me   to   the blazblaz  "
print(lenOfLastWord(s))


''' def lenOfLastWord(s):
    counter = 0
    found_word = False

    for i in range(len(s)-1, -1, -1):
        if s[i].isalpha():
            counter += 1
            found_word = True
        elif found_word and s[i] == ' ':
            break

    return counter


s = "   fly me   to   the blazblaz  " '''

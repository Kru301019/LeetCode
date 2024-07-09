def findIndex(haystack, needle):
    needleLen = len(needle)
    for i in range(len(haystack)):

        if haystack[i:needleLen+i] == needle[:needleLen]:
            return i
            break

haystack = "sadbutsad"
needle = "sad"
print(findIndex(haystack, needle))

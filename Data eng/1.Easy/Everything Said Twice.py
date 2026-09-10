def word_frequency(text):
  count_word = []
  tempo = ""

  for char in text:
    if char != " ":
      tempo += char
    else:
      if tempo:  # Appends word when a space is found (and ignores empty spaces)
        count_word.append(tempo)
        tempo = ""

  # FIX: Catch the last word remaining in tempo after the loop ends
  if tempo:
    count_word.append(tempo)

  my_dict = {}

  for word in count_word:
    if word in my_dict:
      my_dict[word] += 1
    else:
      my_dict[word] = 1

  return my_dict


# Test run
text = "click view click submit view view"
print(word_frequency(text))
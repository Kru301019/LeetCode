def input(text):

    count_word = []
    tempo =''
    for word in text:
        if word != ' ':
            tempo += word

        if word == ' ':
            count_word.append(tempo)
            tempo =''

    my_dict = {}
    
    
    for arr in count_word:

    
        if arr  in my_dict:
            
            my_dict[arr] += 1

        else:
            my_dict[arr] = 1

    return my_dict

text ="click view click submit view view"
input(text)
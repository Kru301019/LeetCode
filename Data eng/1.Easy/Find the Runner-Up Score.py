def Find_the_Runner_Up_Score(my_list):
   
    my_list.sort()
    return (list(set(my_list))[-2])

my_list = [2, 3, 6, 6, 5]
Find_the_Runner_Up_Score(my_list)
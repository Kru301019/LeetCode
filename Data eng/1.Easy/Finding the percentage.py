def Finding_the_percentage(marks, num):
    num-=1
    specific_stud = list(marks)[num]
    total =sum(mark for mark in marks[specific_stud])
    return total / len(marks[specific_stud])

marks = {
        "Krishna":[ 67, 68, 69],
        "Arjun": [70, 98, 63],
        "Malika": [52, 56, 60 ]}

Finding_the_percentage(marks, 3)
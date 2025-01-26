import pandas as pd

# Define the Students table
students_data = {
    "student_id": [1, 2, 13, 6],
    "student_name": ["Alice", "Bob", "John", "Alex"]
}
students = pd.DataFrame(students_data)

# Define the Subjects table
subjects_data = {
    "subject_name": ["Math", "Physics", "Programming"]
}
subjects = pd.DataFrame(subjects_data)

# Define the Examinations table
examinations_data = {
    "student_id": [1, 1, 1, 2, 1, 1, 13, 13, 13, 2, 1],
    "subject_name": ["Math", "Physics", "Programming", "Programming", "Physics", 
                     "Math", "Math", "Programming", "Physics", "Math", "Math"]
}
examinations = pd.DataFrame(examinations_data)



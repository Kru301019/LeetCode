import pandas as pd

# Sample DataFrames (replace these with actual data or import from CSV)
students_data = {
    'student_id': [1, 2, 13, 6],
    'student_name': ['Alice', 'Bob', 'John', 'Alex']
}
subjects_data = {
    'subject_name': ['Math', 'Physics', 'Programming']
}
examinations_data = {
    'student_id': [1, 1, 1, 2, 1, 1, 13, 13, 13, 2, 1],
    'subject_name': ['Math', 'Physics', 'Programming', 'Programming', 'Physics', 'Math', 'Math', 'Programming', 'Physics', 'Math', 'Math']
}

# Create DataFrames
students = pd.DataFrame(students_data)
subjects = pd.DataFrame(subjects_data)
examinations = pd.DataFrame(examinations_data)

# Perform Cross Join
cross_join = pd.merge(students, subjects, how='cross')

# Merge with Examinations to get attended exams
result = pd.merge(cross_join, examinations, how='left', on=['student_id', 'subject_name'])

# Count attended exams (if no match, count as 0)
result_count = result.groupby(['student_id', 'student_name', 'subject_name']).size().reset_index(name='attended_exams')

# Fill missing attended exams with 0
result_count['attended_exams'] = result_count['attended_exams'].fillna(0).astype(int)

# Final result sorted by student_id and subject_name
final_result = result_count.sort_values(by=['student_id', 'subject_name']).reset_index(drop=True)

# Display the result
print(final_result)

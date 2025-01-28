import pandas as pd

# Step 1: Create the DataFrame
data = {
    "teacher_id": [1, 1, 1, 2, 2, 2, 2],
    "subject_id": [2, 2, 3, 1, 2, 3, 4],
    "dept_id": [3, 4, 3, 1, 1, 1, 1]
}

teacher_df = pd.DataFrame(data)

res = teacher_df.groupby('teacher_id')['subject_id'].nunique().reset_index()
res['sum'] = res['subject_id']
print(res) 
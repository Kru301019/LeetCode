import pandas as pd

# Create the DataFrame
data = {
    'id': [101, 102, 103, 104, 105, 106],
    'name': ['John', 'Dan', 'James', 'Amy', 'Anne', 'Ron'],
    'department': ['A', 'A', 'A', 'A', 'A', 'B'],
    'managerId': [None, 101, 101, 101, 101, 101]
}

df = pd.DataFrame(data)

# Step 1: Count how many direct reports each manager has
manager_counts = df['managerId'].value_counts()

# Step 2: Get manager IDs who have at least 5 reports
managers_with_5_or_more = manager_counts[manager_counts >= 5].index

# Step 3: Get their names from the original df (where id is in the list)
result = df[df['id'].isin(managers_with_5_or_more)][['name']]

print(result)

import pandas as pd

# Define the data
data = {
    'article_id': [1, 1, 2, 2, 4, 3, 3],
    'author_id': [3, 3, 7, 7, 7, 4, 4],
    'viewer_id': [5, 6, 7, 6, 1, 4, 4],
    'view_date': ['2019-08-01', '2019-08-02', '2019-08-01', '2019-08-02', '2019-07-22', '2019-07-21', '2019-07-21']
}

# Create the DataFrame
df = pd.DataFrame(data)


df['view_date'] = pd.to_datetime(df['view_date'])
res = df[df['author_id'] == df['viewer_id']]['author_id'].drop_duplicates().sort_values()
print(res)
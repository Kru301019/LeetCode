import pandas as pd

# Define the data
data = {
    'tweet_id': [1, 2],
    'content': ['Let us Code', 'More than fifteen chars are here!']
}

# Create the DataFrame
df = pd.DataFrame(data)

res = df[df['content'].apply(len) > 15]['tweet_id'].values
print(res)
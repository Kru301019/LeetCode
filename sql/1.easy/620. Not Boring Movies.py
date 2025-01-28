import pandas as pd

# Creating the DataFrame for Cinema table
data = {
    'id': [1, 2, 3, 4, 5],
    'movie': ['War', 'Science', 'Irish', 'Ice song', 'House card'],
    'description': ['great 3D', 'fiction', 'boring', 'Fantacy', 'Interesting'],
    'rating': [8.9, 8.5, 6.2, 8.6, 9.1]
}

df = pd.DataFrame(data)
res = df[(df['description'] != 'boring') & ( df['id'] % 2 != 0 )]
print(res.sort_values(by='rating', ascending=False))
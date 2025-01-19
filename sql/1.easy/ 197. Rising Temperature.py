import pandas as pd

data = {
    'id' : [i for i in range(1,5)],
    'recordDate': ['2015-01-01', '2015-01-02', '2015-01-03', '2015-01-04'],
    'temperature': [10, 25, 20, 30]
}

df = pd.DataFrame(data)

df.sort_values(by='recordDate', inplace=True)

print(df[df['temperature'].diff() > 0]['id'])



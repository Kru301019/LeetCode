import pandas as pd
import numpy as np

data = {
    'id' : [i for i in range(1,7)],
    'name' : ['Will', 'Jane', 'Alex', 'Bill', 'Zack', 'Mark'],
    'referee_id' : [None, None, 2, None, 1, 2]  
}
df = pd.DataFrame(data)
res = df[df['referee_id'] != 2]['name']
print(res)

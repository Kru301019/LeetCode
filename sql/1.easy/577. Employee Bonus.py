import pandas as pd 
employee_data = { 'empId': [3, 1, 2, 4], 'name': ['Brad', 'John', 'Dan', 'Thomas'], 'supervisor': [None, 3, 3, 3], 'salary': [4000, 1000, 2000, 4000] } 
employee_df = pd.DataFrame(employee_data) 
bonus_data = { 'empId': [2, 4], 'bonus': [500, 2000] }
bonus_df = pd.DataFrame(bonus_data)

mergedf = pd.merge(employee_df, bonus_df, how='left', on='empId')
mergedf = mergedf[['name', 'bonus']] 
mergedf = mergedf[(mergedf['bonus'] < 1000) | (mergedf['bonus'].isnull())]
mergedf['bonus'] = mergedf['bonus'].fillna(0).astype(int)
print(mergedf)
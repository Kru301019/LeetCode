import pandas as pd

data = {
    'product_id': [0, 1, 2, 3, 4],
    'low_fats': ['Y', 'Y', 'N', 'Y', 'N'],
    'recyclable': ['N', 'Y', 'Y', 'Y', 'N']
}

df = pd.DataFrame(data)
print( df[(df['low_fats']=='Y') & (df['recyclable']!='Y')] )
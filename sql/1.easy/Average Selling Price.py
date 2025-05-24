import pandas as pd

# Prices table
prices_data = {
    'product_id': [1, 1, 2, 2],
    'start_date': ['2019-02-17', '2019-03-01', '2019-02-01', '2019-02-21'],
    'end_date': ['2019-02-28', '2019-03-22', '2019-02-20', '2019-03-31'],
    'price': [5, 20, 15, 30]
}

prices_df = pd.DataFrame(prices_data)
prices_df['start_date'] = pd.to_datetime(prices_df['start_date'])
prices_df['end_date'] = pd.to_datetime(prices_df['end_date'])

print("Prices DataFrame:")
print(prices_df)

# UnitsSold table
units_sold_data = {
    'product_id': [1, 1, 2, 2],
    'purchase_date': ['2019-02-25', '2019-03-01', '2019-02-10', '2019-03-22'],
    'units': [100, 15, 200, 30]
}

units_sold_df = pd.DataFrame(units_sold_data)
units_sold_df['purchase_date'] = pd.to_datetime(units_sold_df['purchase_date'])

print("\nUnitsSold DataFrame:")
print(units_sold_df)


prices_df.set_index('product_id', inplace=True)

units_sold_df.set_index('product_id', inplace=True)

merged_df = prices_df.merge(units_sold_df, on='product_id' ,how = 'inner')

filtered_df = merged_df[merged_df['purchase_date'].between(merged_df['start_date'], merged_df['end_date'], inclusive='both')]

filtered_df

filtered_df['unit_price'] = filtered_df['price'] * filtered_df['units']

filtered_df

grouped = filtered_df.groupby('product_id').agg({
    'unit_price': 'sum',
    'units': 'sum'
})

grouped['average_price'] = (grouped['unit_price'] / grouped['units']).round(2)

result = grouped[['average_price']].reset_index()

result
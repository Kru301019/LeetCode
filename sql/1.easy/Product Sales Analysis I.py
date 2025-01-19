import pandas as pd

# Create the Product dataset
product_data = {
    'product_id': [100, 200, 300],
    'product_name': ['Nokia', 'Apple', 'Samsung']
}
product_df = pd.DataFrame(product_data)

# Create the Sales dataset
sales_data = {
    'sale_id': [1, 2, 7],
    'product_id': [100, 100, 200],
    'year': [2008, 2009, 2011],
    'quantity': [10, 12, 15],
    'price': [5000, 5000, 9000]
}
sales_df = pd.DataFrame(sales_data)

res = pd.merge(sales_df, product_df, on='product_id')[['product_name','year','price']]
print(res)
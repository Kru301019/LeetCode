from pyspark.sql import SparkSession
from pyspark.sql.types import StructType, StructField, IntegerType, StringType
from pyspark.sql import functions as F

spark = SparkSession.builder \
    .appName("PySparkPractice") \
    .master("local[*]") \
    .getOrCreate()

# Sales table
sales_schema = StructType([
    StructField("sale_id", IntegerType(), False),
    StructField("product_id", IntegerType(), False),
    StructField("year", IntegerType(), False),
    StructField("quantity", IntegerType(), False),
    StructField("price", IntegerType(), False)
])

sales_data = [
    (1, 100, 2008, 10, 5000),
    (2, 100, 2009, 12, 5000),
    (7, 200, 2011, 15, 9000)
]

sales_df = spark.createDataFrame(sales_data, sales_schema)

# Product table
product_schema = StructType([
    StructField("product_id", IntegerType(), False),
    StructField("product_name", StringType(), False)
])

product_data = [
    (100, "Nokia"),
    (200, "Apple"),
    (300, "Samsung")
]

product_df = spark.createDataFrame(product_data, product_schema)


product_df.alias('p').join( sales_df.alias('s'), F.col('p.product_id') == F.col('s.product_id'))\
        .select('p.product_name', 's.year', 's.price') \
            .orderBy(F.col('s.year').desc()) \
                .show()

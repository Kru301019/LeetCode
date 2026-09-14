from pyspark.sql import SparkSession
from pyspark.sql.functions import col

spark = SparkSession.builder \
    .appName("VideoStream") \
    .getOrCreate()

data = [
    (1, "Amazing Adventure", "Action", 2020, 120, 2500000),
    (2, "Sci-fi World", "Sci-fi", 2018, 140, 800000),
    (3, "Mysterious Island", "Drama", 2022, 115, 1500000),
    (4, "Uncharted Realms", "Action", 2019, 134, 3200000),
    (5, "Journey to the Stars", "Sci-fi", 2021, 128, 1100000)
]

columns = [
    "video_id",
    "title",
    "genre",
    "release_year",
    "duration",
    "view_count"
]

df = spark.createDataFrame(data, columns)

df\
    .filter((col("release_year") >= 2019) & (col("view_count")>1000000))\
        .show()


def split_words(line):
  return line.split()

def create_pair(word):
  return (word, 1) 
  
def sun_counts(a, b):
  return a + b

from pyspark.sql import SparkSession

spark = SparkSession.builder.appName("wordCount").getOrCreate()
sc = spark.sparkContext

text_RDD = sc.textFile()
pairs_RDD = text_RDD.flatMap(split_words).map(create_pair)
wordcounts_RDD = pairs_RDD.reduceByKey(sun_counts, numPartitions = 1)

wordcounts_RDD.saveAsTextFile();

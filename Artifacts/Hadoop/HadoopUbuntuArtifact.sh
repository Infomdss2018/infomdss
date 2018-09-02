#!/bin/sh

# update ubuntu
sudo apt-get update -y

# install ssh
sudo apt-get install ssh -y
sudo apt-get install rsync -y

# install java
sudo apt-get install openjdk-8-jre -y
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre/

# download hadoop
wget http://apache.40b.nl/hadoop/common/hadoop-3.1.1/hadoop-3.1.1.tar.gz
tar -xvf hadoop-3.1.1.tar.gz

# install hadoop
sudo mv hadoop-3.1.1 /usr/local/hadoop


# test 1: version
cd /usr/local/hadoop
bin/hadoop version

# test 2: Map Reduce
mkdir input
cp etc/hadoop/*.xml input
bin/hadoop jar share/hadoop/mapreduce/hadoop-mapreduce-examples-3.1.1.jar grep input output 'dfs[a-z.]+'
cat output/*

# test 3: HDFS
bin/hdfs classpath

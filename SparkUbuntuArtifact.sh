#!/bin/sh

# update ubuntu
sudo apt-get update

# install java
sudo apt-get -y install default-jdk
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre/

# download spark
wget http://apache.cs.uu.nl/spark/spark-2.3.1/spark-2.3.1-bin-hadoop2.7.tgz
tar -xvf spark-2.3.1-bin-hadoop2.7.tgz

# install spark
sudo mv spark-2.3.1-bin-hadoop2.7 /usr/local/
sudo ln -s /usr/local/spark-2.3.1-bin-hadoop2.7/ /usr/local/spark
cd /usr/local/spark

# start spark
export SPARK_HOME=/usr/local/spark
$SPARK_HOME/sbin/start-master.sh
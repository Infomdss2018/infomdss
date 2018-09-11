#!/bin/sh

# update ubuntu
sudo apt-get update -y

# set 
cd /etc/profile.d
sudo wget https://raw.githubusercontent.com/rebremer/AzureDevTestLabHadoopSparkOnUbuntuScript/master/setenvvar.sh
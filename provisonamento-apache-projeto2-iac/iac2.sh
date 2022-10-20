#!/usr/bin/env bash

#update dp servidor
echo "atualizando servidor"
apt-get update && apt-get upgrade -y

#install apache
apt-get install apache2 unzip wget -y

#baixar app
echo "baixando e movendo os arquivos do servidor"
cd /tmp && wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
mv linux-site-dio-main/* /var/www/html/
ls -lth /var/www/html/

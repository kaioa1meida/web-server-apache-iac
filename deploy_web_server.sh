#!/bin/bash

echo "Atualizando servidor"

apt-get update -y
apt-get upgrade -y

echo "Instalando dependências"

apt-get install apache2 -y
apt-get install unzip -y

echo "Subindo código fonte da aplicação"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Success on deploy!!!"

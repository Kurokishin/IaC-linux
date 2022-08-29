#!/bin/bash

echo "Atualizando o sistema"
apt-get update && apt-get upgrade -y

echo "Instalando e configurando o servidor web Apache"
apt-get install apache2 unzip -y
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Configurações finalizadas"

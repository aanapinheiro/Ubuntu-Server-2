#!/bin/bash

echo "Atualizando o servidor..."

apt-get update
apt-get upgrade -y

echo "Servidor atualizado com sucesso!"

echo "Instalando Apache..."

apt-get install apache2 -y

echo "Apache instalado com sucesso!"

echo "Instalando descompactador..."

apt-get install unzip -y

echo "Descompactador instalado com sucesso!"

echo "Importando arquivos da aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Arquivos importados com sucesso!"

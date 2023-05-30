#!/bin/bash

# Atualizando o servidor
echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y

# Instalando o servidor web Apache
echo "Instalando o servidor web Apache..."
apt-get install apache2 -y

# Instalando o utilitário unzip
echo "Instalando o utilitário unzip..."
apt-get install unzip -y

# Baixando e copiando os arquivos da aplicação
echo "Baixando e copiando os arquivos da aplicação..."
cd /tmp

# Baixando o arquivo zip do repositório
echo "Baixando o arquivo zip do repositório..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

# Descompactando o arquivo zip
echo "Descompactando o arquivo zip..."
unzip main.zip

# Acessando o diretório do projeto descompactado
cd linux-site-dio-main

# Copiando os arquivos para a pasta de publicação do Apache
echo "Copiando os arquivos para a pasta de publicação do Apache..."
cp -R * /var/www/html/

# Finalizado
echo "Configuração concluída!"



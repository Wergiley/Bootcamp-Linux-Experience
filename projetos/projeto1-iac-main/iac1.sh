#!/bin/bash

# Criando diretórios
echo "Criando diretórios..."

# Criando diretório /publico
mkdir /publico

# Criando diretório /adm
mkdir /adm

# Criando diretório /ven
mkdir /ven

# Criando diretório /sec
mkdir /sec

# Criando grupos de usuários
echo "Criando grupos de usuários..."

# Criando grupo GRP_ADM
groupadd GRP_ADM

# Criando grupo GRP_VEN
groupadd GRP_VEN

# Criando grupo GRP_SEC
groupadd GRP_SEC

# Criando usuários
echo "Criando usuários..."

# Criando usuário carlos e adicionando-o ao grupo GRP_ADM
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

# Criando usuário maria e adicionando-o ao grupo GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

# Criando usuário joao e adicionando-o ao grupo GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

# Criando usuário debora e adicionando-o ao grupo GRP_VEN
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

# Criando usuário sebastiana e adicionando-o ao grupo GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

# Criando usuário roberto e adicionando-o ao grupo GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

# Criando usuário josefina e adicionando-o ao grupo GRP_SEC
useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

# Criando usuário amanda e adicionando-o ao grupo GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

# Criando usuário rogerio e adicionando-o ao grupo GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

# Especificando permissões dos diretórios
echo "Especificando permissões dos diretórios...."

# Definindo proprietário e grupo do diretório /adm
chown root:GRP_ADM /adm

# Definindo proprietário e grupo do diretório /ven
chown root:GRP_VEN /ven

# Definindo proprietário e grupo do diretório /sec
chown root:GRP_SEC /sec

# Definindo permissões do diretório /adm
chmod 770 /adm

# Definindo permissões do diretório /ven
chmod 770 /ven

# Definindo permissões do diretório /sec
chmod 770 /sec

# Definindo permissões do diretório /publico
chmod 777 /publico

# Finalizado
echo "Fim....."
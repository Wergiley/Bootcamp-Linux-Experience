#!/bin/bash

# Criando usuários do sistema
echo "Criando usuários do sistema..."

# Criando usuário guest10
echo "Criando usuário guest10..."
useradd guest10 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd guest10 -e

# Criando usuário guest11
echo "Criando usuário guest11..."
useradd guest11 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd guest11 -e

# Criando usuário guest12
echo "Criando usuário guest12..."
useradd guest12 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd guest12 -e

# Criando usuário guest13
echo "Criando usuário guest13..."
useradd guest13 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd guest13 -e

# Finalizado
echo "Finalizado!!"


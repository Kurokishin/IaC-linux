#!/bin/bash

echo "Adicionando usuários (administração)"
useradd carlos -m -c "Usuário administrador" -s /bin/bash -p $(openssl passwd 123)

useradd maria -m -c "Usuário administrador" -s /bin/bash -p $(openssl passwd 123)

useradd joao -m -c "Usuário administrador" -s /bin/bash -p $(openssl passwd 123)

echo "Adicionando usuários (vendas)"
useradd debora -m -c "Usuário de vendas" -s /bin/bash -p $(openssl passwd 123)

useradd sebastiana -m -c "Usuário de vendas" -s /bin/bash -p $(openssl passwd 123)

useradd roberto -m -c "Usuário de vendas" -s /bin/bash -p $(openssl passwd 123)

echo "Adicionando usuários (sec)"
useradd josefina -m -c "Usuário sec" -s /bin/bash -p $(openssl passwd 123)

useradd amanda -m -c "Usuário sec" -s /bin/bash -p $(openssl passwd 123)

useradd rogerio -m -c "Usuário sec" -s /bin/bash -p $(openssl passwd 123)

echo "Criando diretórios"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Definindo as permissões dos diretórios"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Configurando restrições de diretórios"
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Atribuindo usuários para respectivos grupos"
usermod -aG GRP_ADM carlos 
usermod -aG GRP_ADM maria 
usermod -aG GRP_ADM joao

usermod -aG GRP_VEN debora
usermod -aG GRP_VEN sebastiana
usermod -aG GRP_VEN roberto

usermod -aG GRP_SEC josefina 
usermod -aG GRP_SEC amanda
usermod -aG GRP_SEC rogerio

echo "Configuração finalizada!"

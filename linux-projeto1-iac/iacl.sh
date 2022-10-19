#!/usr/bin/env bash

#VARIAVEIS
PASSWORD=mudar@123

echo 'criando diretorios..'
mkdir -p /publico \
        /adm \
        /ven \
        /sec

echo 'criando grupo de usuarios..'
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo 'criando usuarios..'
useradd carlos -m -s /bin/bash -p $(openssl passwd -1 $PASSWORD) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -1 $PASSWORD) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -1 $PASSWORD) -G GRP_ADM
useradd debora -m -s /bin/bash -p $(openssl passwd -1 $PASSWORD) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -1 $PASSWORD) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -1 $PASSWORD) -G GRP_VEN
useradd josefina -m -s /bin/bash -p $(openssl passwd -1 $PASSWORD) -G GRP_ADM
useradd amanda -m -s /bin/bash -p $(openssl passwd -1 $PASSWORD) -G GRP_ADM
useradd rogerio -m -s /bin/bash -p $(openssl passwd -1 $PASSWORD) -G GRP_ADM
passwd -e carlos
passwd -e maria
passwd -e joao
passwd -e debora
passwd -e sebastiana
passwd -e roberto
passwd -e josefina
passwd -e amanda
passwd -e rogerio

echo 'add permissoes aos diretorios'

chown root.GRP_ADM /adm
chown root.GRP_VEN /ven
chown root.GRP_SEC /sec
chmod -R 770 /adm /ven /sec
chmod -R 777 /publico

echo 'finalizado com sucesso.'

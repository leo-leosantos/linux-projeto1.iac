#!/bin/bash

echo "--Iniciando Script---"
echo "---Criando diretorios---"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "---Criando Grupos de Usuários---"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "---Criando usuários---"

useradd carlos -c "Carlos da silva"  -m -s /bin/bash -p $(openssl passwd -crypt senha123)  -G GRP_ADM
useradd maria -c "Maria da Silva"  -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd joao -c "João da Silva"   -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM

useradd debora  -c "Debora da Silva"  -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana da Silva"  -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd roberto -c "Roberto da Silva"  -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN

useradd amanda -c "Amanda da silva"  -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd josefina  -c "Josefina da Silva" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd rogerio -c "Rogerio da Silva" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC


echo "---Especificando Permissões dos Diretórios---"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico


echo "---Finalizando Script---"




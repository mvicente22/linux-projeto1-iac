#! /bin/bash
cd /home

echo " Criando diretorios ..."

mkdir publico adm ven sec

echo "Criando Grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios"

useradd carlos -m -s /bin/bash -p $(openssl passwd 123@senha)
passwd carlos -e
useradd maria -m -s /bin/bash -p $(openssl passwd 123@senha)
passwd maria -e
useradd joao -m -s /bin/bash -p $(openssl passwd 123@senha)
passwd joao -e

useradd debora -m -s /bin/bash -p $(openssl passwd 123@senha)
passwd debora -e
useradd sebastiana -m -s /bin/bash -p $(openssl passwd 123@senha)
passwd sebastiana -e
useradd roberto -m -s /bin/bash -p $(openssl passwd 123@senha)
passwd roberto -e

useradd josefina -m -s /bin/bash -p $(openssl passwd 123@senha)
passwd josefina -e
useradd amanda -m -s /bin/bash -p $(openssl passwd 123@senha)
passwd amanda -e
useradd rogerio -m -s /bin/bash -p $(openssl passwd 123@senha)
passwd rogerio -e

echo "Aplicando permissao dos diretorios"

chown root:GRP_ADM adm
chown root:GRP_VEN ven
chown root:GRP_SEC sec

echo "Aplicando permissoes"

gpasswd -M carlos,maria,joao GRP_ADM
gpasswd -M debora,sebastiana,roberto GRP_VEN
gpasswd -M josefina,amanda,rogerio GRP_SEC

chmod 777 publico
chmod 770 adm
chmod 770 ven
chmod 770 sec

echo "Fim..."





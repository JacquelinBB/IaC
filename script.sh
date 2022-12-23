#!/bin/bash

echo "Criando diretórios requeridos..."

mkdir publico
mkdir adm
mkdir ven
mkdir sec

echo "Criando grupos requeridos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários e distribuindo aos grupos pertencentes..."

useradd carlos -m -s /bin/bash -p $(openssl passwd 1234) -g GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd 1234) -g GRP_ADM
useradd joao_ -m -s /bin/bash -p $(openssl passwd 1234) -g GRP_ADM
useradd debora -m -s /bin/bash -p $(openssl passwd 1234) -g GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd 1234) -g GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd 1234) -g GRP_VEN
useradd josefina -m -s /bin/bash -p $(openssl passwd 1234) -g GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd 1234) -g GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd 1234) -g GRP_SEC

echo "A senha dos usuários é '1234', logue para estabeler nova senha..."

passwd carlos -e
passwd maria -e
passwd joao_ -e
passwd debora -e
passwd sebastiana -e
passwd roberto -e
passwd josefina -e
passwd amanda -e
passwd rogerio -e

echo "Estabelecimento de permissões..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Finalizado!"

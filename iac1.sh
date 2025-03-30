#!/bin/bash
# Criação de diretórios
mkdir -p /publico
mkdir -p /adm
mkdir -p /ven
mkdir -p /sec

# Criação de grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# Criação de usuários e adição aos grupos
useradd carlos -m -s /bin/bash -G GRP_ADM
useradd maria -m -s /bin/bash -G GRP_ADM
useradd joao -m -s /bin/bash -G GRP_ADM

useradd debora -m -s /bin/bash -G GRP_VEN
useradd sebastiana -m -s /bin/bash -G GRP_VEN
useradd roberto -m -s /bin/bash -G GRP_VEN

useradd josefina -m -s /bin/bash -G GRP_SEC
useradd amanda -m -s /bin/bash -G GRP_SEC
useradd rogerio -m -s /bin/bash -G GRP_SEC

# Definição de permissões
chown -R root:GRP_ADM /adm
chown -R root:GRP_VEN /ven
chown -R root:GRP_SEC /sec
chown -R root:GRP_ADM /publico

chmod -R 770 /adm
chmod -R 770 /ven
chmod -R 770 /sec
chmod -R 777 /publico

#/bin/bash

echo "Criando Diretorios no Linux..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd thiago -m -s /bin/bash -p $(openssl passwd -crypt Pass123) -G GRP_ADM
useradd Maria -m -s /bin/bash -p $(openssl passwd -crypt Pass123) -G GRP_VEN
useradd Ana -m -s /bin/bash -p $(openssl passwd -crypt Pass123) -G GRP_VEN
useradd Carol -m -s /bin/bash -p $(openssl passwd - crypt Pass123) -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adn
chmod 770 /ven
chmod 770 /sec

chmod 777 /publico

echo "Fim......"

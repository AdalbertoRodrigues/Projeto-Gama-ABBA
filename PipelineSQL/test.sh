#!/bin/bash

cd PipelineSQL/terraform

ipdev=$(terraform output | grep DEV | awk '{print $2;exit}')

ipstag=$(terraform output | grep STAG | awk '{print $2;exit}')

ipprod=$(terraform output | grep PROD | awk '{print $2;exit}')

DB_DEV=$(ssh -i ~/key.pem ubuntu@$ipdev "mysql -uroot -proot SpringWebYoutube -e 'SHOW TABLES'")

DB_STAG=$(ssh -i ~/key.pem ubuntu@$ipstag "mysql -uroot -proot SpringWebYoutube -e 'SHOW TABLES'")

DB_PROD=$(ssh -i ~/key.pem ubuntu@$ipprod "mysql -uroot -proot SpringWebYoutube -e 'SHOW TABLES'")

echo $DB_PROD

regex_DB='administradores'

if [[ $DB_DEV =~ $regex_DB ]]
then
    echo "::::: DataBase DEV criada com sucesso :::::"
else
    echo "::::: Falha ao estabelecer database :::::"
    exit 1
fi


if [[ $DB_STAG =~ $regex_DB ]]
then
    echo "::::: DataBase STAG criada com sucesso :::::"
else
    echo "::::: Falha ao estabelecer database STAG :::::"
    exit 1
fi

if [[ $DB_PROD =~ $regex_DB ]]
then
    echo "::::: DataBase PROD criada com sucesso :::::"
    exit 0
else
    echo "::::: Falha ao estabelecer database PROD :::::"
    exit 1
fi
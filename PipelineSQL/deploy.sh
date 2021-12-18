#!/bin/bash

cd PipelineSQL/terraform
terraform init
terraform apply -auto-approve

echo "Aguardando criacao das maquinas"
sleep 10

echo "[ec2-mysql-dev]
$(terraform output | grep DEV | awk '{print $2;exit}')
[ec2-mysql-stag]
$(terraform output | grep STAG | awk '{print $2;exit}')
[ec2-mysql-prod]
$(terraform output | grep PROD | awk '{print $2;exit}')" > ../ansible/hosts

cd ../ansible

export PASSWORD='root'

ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i hosts provisionar.yml -u ubuntu --private-key ~/key.pem

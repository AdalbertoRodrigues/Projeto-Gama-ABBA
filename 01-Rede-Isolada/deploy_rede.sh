#!/bin/bash

cd terraform
terraform init
terraform apply -auto-approve

echo $(terraform output | grep VPC)
echo $(terraform output | grep SubnetPub1a)
echo $(terraform output | grep SubnetPub1b)
echo $(terraform output | grep SubnetPub1c)
#!/bin/bash

cd PipelineAPP/02-Provision-APP/ansible



ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i hosts provisionarDev.yml -u ubuntu --private-key ~/key.pem

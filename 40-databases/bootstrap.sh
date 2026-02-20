#!/bin/bash

component=$1
# environment=$2
dnf install ansible -y
ansible-pull -U https://github.com/kishoregit143/ansible-roboshop-roles-tf.git -e component=$component main.yaml

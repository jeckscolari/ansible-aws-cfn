#!/bin/bash

KEY_PATH="../.ssh/ansible.pem"
PARAMETER_PATH="/ansible-cfn"

aws ssm put-parameter \
  --name $PARAMETER_PATH/ansible_private_key \
  --type SecureString \
  --value "file://${KEY_PATH}" \
  --description "Ansible private key for EC2 instances" \
  --overwrite

aws ssm put-parameter \
  --name $PARAMETER_PATH/ssh_location \
  --type String \
  --value "0.0.0.0/0" \
  --description "IP Address Range from which SSH is allowed" \
  --overwrite

aws ssm put-parameter \
  --name $PARAMETER_PATH/key_name \
  --type String \
  --value "ansible" \
  --description "SSH key name" \
  --overwrite

aws ssm get-parameter \
  --with-decryption \
  --name $PARAMETER_PATH/ansible_private_key \
  --query Parameter.Value

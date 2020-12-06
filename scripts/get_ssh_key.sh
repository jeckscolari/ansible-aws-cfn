#!/bin/bash

PARAMETER_PATH="/ansible-cfn"

mkdir -p ~/.ssh

aws ssm get-parameter \
  --with-decryption \
  --name $PARAMETER_PATH/ansible_private_key \
  --query Parameter.Value > ~/.ssh/ansible

chmod 600 ~/.ssh/ansible
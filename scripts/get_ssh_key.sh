#!/bin/bash

PARAMETER_PATH="/ansible-cfn"

mkdir .ssh

aws ssm get-parameter \
  --with-decryption \
  --name $PARAMETER_PATH/ansible_private_key \
  --query Parameter.Value \
  --output text > .ssh/ansible

chmod 600 .ssh/ansible

cat .ssh/ansible
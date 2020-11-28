#!/bin/bash

set -e 

aws s3 cp \
    cfn/templates/* \
    s3://ansible-cfn/templates/
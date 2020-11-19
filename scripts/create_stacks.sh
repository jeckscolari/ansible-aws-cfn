#!/bin/bash

set -e 

for filename in cfn_templates/*.yml; do
    stack = $(basename "$filename" .yml)

    aws cloudformation create-stack \
        --stack-name $stack \
        s3://cfn-templates-demo/filename
done

 
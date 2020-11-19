#!/bin/bash

set -e

for filename in cfn_templates/*.yml; do
    stack=$(basename "$filename" .yml)
    filename=$(basename "$filename")

    aws cloudformation create-stack \
        --stack-name $stack \
        --template-url s3://cfn-templates-demo/$filename

done

 
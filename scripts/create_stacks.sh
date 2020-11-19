#!/bin/bash

set -e

for filename in cfn_templates/*.yml; do
    stack=$(basename "$filename" .yml)
    filename=$(basename "$filename")
    url=$(aws s3 presign s3://cfn-templates-demo/$filename)

    aws cloudformation create-stack \
        --stack-name $stack \
        --template-url $url
done

 
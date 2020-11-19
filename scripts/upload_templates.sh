#!/bin/bash

set -e 

for filename in cfn_templates/*.yml; do
    cfn-lint -t ${filename};
    aws cloudformation validate-template --template-body file://${filename};
done

aws s3 cp \
    cfn_templates/* \
    s3://cfn-templates-demo
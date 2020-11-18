#!/bin/bash

aws s3 cp \
    cfn/* \
    s3://cfn-templates-demo
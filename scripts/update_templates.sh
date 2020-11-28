#!/bin/bash

set -e

TEMPLATES_FOLDER=cfn/templates

LATEST_COMMIT=$(git rev-parse HEAD)

TEMPLATES_UPDATE_COMMIT=$(git log -1 --format=format:%H --full-diff $TEMPLATES_FOLDER)

if [ $LATEST_COMMIT = $TEMPLATES_UPDATE_COMMIT ];
    then
        echo "$TEMPLATES_FOLDER has changed"
        aws s3 cp \
            $TEMPLATES_FOLDER/* \
            s3://ansible-cfn/templates/
else
     echo "no changes detected"
     exit 0;
fi

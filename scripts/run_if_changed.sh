#!/bin/bash

set -e

LATEST_COMMIT=$(git rev-parse HEAD)

FILE_OR_FOLDER_UPDATE_COMMIT=$(git log -1 --format=format:%H --full-diff $1)

if [ $LATEST_COMMIT = $FILE_OR_FOLDER_UPDATE_COMMIT ];
    then
        echo "$1 has changed"
        $2
else
     echo "no changes detected"
     exit 0;
fi
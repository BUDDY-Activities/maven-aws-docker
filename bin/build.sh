#!/bin/bash
set -e

if [[ -z $RELEASE ]]; then
    echo "Error: undefined RELEASE environment variable."
    exit 1
fi

docker build -t buddyactivities/maven-aws:latest .
docker tag buddyactivities/maven-aws:latest buddyactivities/maven-aws:"$RELEASE"

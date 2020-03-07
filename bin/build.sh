#!/bin/bash
set -e

if [[ -z $JDK_VERSION ]]; then
    echo "Error: undefined JDK_VERSION environment variable."
    exit 1
fi

docker build -t buddyactivities/maven-aws:latest .
docker tag buddyactivities/maven-aws:latest buddyactivities/maven-aws:jdk-"$JDK_VERSION"

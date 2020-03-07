# maven-aws-docker

[![Build Status](https://travis-ci.com/BUDDY-Activities/maven-aws-docker.svg?branch=master)](https://travis-ci.com/BUDDY-Activities/maven-aws-docker)

A docker image for Maven with AWS and ECS CLI tools.

This image has been used to build Java projects and to push them to AWS ECS containers. It can be useful especially for CI and CD systems.

## Example ##

If you want to `mvn clean install` your Java project, CD where the pom.xml is located, then:

```
$ docker pull buddyactivities/maven-aws
$ docker run --rm buddyactivities/maven-aws clean install
```

For specific Java versions use: `$ docker pull buddyactivities/maven-aws:jdk-13`

Currently supported Java versions:

- JDK 13



## Base image ##

[maven](https://hub.docker.com/r/library/maven/) (maven:3-jdk-13)

## Additional packages ##

 - py-pip
 - py-yaml
 - python-dev
 - groff
 - [aws-cli](http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html)
 - [ecs-cli](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ECS_CLI.html)

See: https://hub.docker.com/r/buddyactivities/maven-aws

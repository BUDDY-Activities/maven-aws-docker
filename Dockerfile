FROM maven:3-jdk-13

LABEL maintainer="SoftInstigate <info@softinstigate.com>"

RUN yum install python-pip python-yaml python-dev groff
RUN pip install awscli
RUN curl --silent --show-error --fail -o /usr/local/bin/ecs-cli \
https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest
RUN chmod +x /usr/local/bin/ecs-cli

COPY bin/startup.sh .
RUN "./startup.sh"

ENTRYPOINT [ "mvn" ]

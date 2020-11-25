FROM registry.access.redhat.com/ubi8/openjdk-11

LABEL org.opencontainers.image.source='https://github.com/kameshsampath/jo-sb-helloworld'

ADD target/*.jar /deployments

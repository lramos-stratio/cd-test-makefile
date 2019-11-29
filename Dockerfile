FROM ubuntu:16.04
MAINTAINER QA "qa@stratio.com"

ARG VERSION

COPY fake-exec-$VERSION /

CMD ["tail -f /dev/null"]

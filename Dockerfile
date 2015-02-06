FROM ubuntu:trusty

ADD bin /app/bin
ADD test.sh /app/
ADD expected.txt /app/

RUN apt-get update && \
apt-get install -y fish lua5.2 nodejs php5-cli ruby tclsh

WORKDIR /app
ENTRYPOINT /app/test.sh

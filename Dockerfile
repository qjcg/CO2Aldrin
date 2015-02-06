FROM ubuntu:trusty

ENV PLAN9 /usr/lib/plan9
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$PLAN9/bin

ADD bin /app/bin
ADD test.sh /app/
ADD expected.txt /app/

RUN apt-get update && \
apt-get install -y 9base fish lua5.2 nodejs php5-cli ruby tclsh

WORKDIR /app
ENTRYPOINT /app/test.sh

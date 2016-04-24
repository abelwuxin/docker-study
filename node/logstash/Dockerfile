FROM ubuntu:14.04
MAINTAINER Abel Deng "abeldeng@qq.com"
ENV REFRESHED_AT 2016-4-22-11-07
RUN apt-get update

RUN apt-get -y install wget
RUN wget -O - http://packages.elasticsearch.org/GPG-KEY-elasticsearch |  apt-key add -
RUN echo 'deb http://packages.elasticsearch.org/logstash/1.4/debian stable main' > /etc/apt/sources.list.d/logstash.list
RUN apt-get -y update
RUN apt-get -y install logstash

ADD logstash.conf /etc/

WORKDIR /opt/logstash

ENTRYPOINT [ "bin/logstash" ]
CMD [ "--config=/etc/logstash.conf" ]


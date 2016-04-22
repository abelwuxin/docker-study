FROM ubuntu:14.04
MAINTAINER Abel Deng "abeldeng@qq.com"
ENV REFRESHED_AT 2016-4-22-11-07
#china update
RUN echo "deb http://cn.archive.ubuntu.com/ubuntu/ trusty main restricted universe multiverse" > /etc/apt/sources.list
RUN echo "deb http://cn.archive.ubuntu.com/ubuntu/ trusty-security main restricted universe multiverse" > /etc/apt/sources.list
RUN echo "deb http://cn.archive.ubuntu.com/ubuntu/ trusty-updates main restricted universe multiverse" > /etc/apt/sources.list
RUN echo "deb http://cn.archive.ubuntu.com/ubuntu/ trusty-backports main restricted universe multiverse" > /etc/apt/sources.list
##测试版源
RUN echo "deb http://cn.archive.ubuntu.com/ubuntu/ trusty-proposed main restricted universe multiverse" > /etc/apt/sources.list
# 源码
RUN echo "deb-src http://cn.archive.ubuntu.com/ubuntu/ trusty main restricted universe multiverse" > /etc/apt/sources.list
RUN echo "deb-src http://cn.archive.ubuntu.com/ubuntu/ trusty-security main restricted universe multiverse" > /etc/apt/sources.list
RUN echo "deb-src http://cn.archive.ubuntu.com/ubuntu/ trusty-updates main restricted universe multiverse" > /etc/apt/sources.list
RUN echo "deb-src http://cn.archive.ubuntu.com/ubuntu/ trusty-backports main restricted universe multiverse" > /etc/apt/sources.list
##测试版源
RUN echo "deb-src http://cn.archive.ubuntu.com/ubuntu/ trusty-proposed main restricted universe multiverse" > /etc/apt/sources.list
RUN apt-get update
#then begin change

RUN apt-get -y install redis-server redis-tools
EXPOSE 6379
ENTRYPOINT ["/usr/bin/redis-server"]
CMD []


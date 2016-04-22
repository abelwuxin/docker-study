#version 1.o
FROM ubuntu
MAINTAINER Abel Deng "abeldeng@qq.com"

#china update
RUN echo "deb http://mirrors.aliyun.com/ubuntu/ trusty main multiverse restricted universe" > /etc/apt/sources.list
RUN echo "deb http://mirrors.aliyun.com/ubuntu/ trusty-backports main multiverse restricted universe" > /etc/apt/sources.list
RUN echo "deb http://mirrors.aliyun.com/ubuntu/ trusty-proposed main multiverse restricted universe" > /etc/apt/sources.list
RUN echo "deb http://mirrors.aliyun.com/ubuntu/ trusty-security main multiverse restricted universe" > /etc/apt/sources.list
RUN echo "deb http://mirrors.aliyun.com/ubuntu/ trusty-updates main multiverse restricted universe" > /etc/apt/sources.list

RUN apt-get update
RUN apt-get install -y nginx
RUN echo 'hi, i am abeldeng' \
	>/usr/share/nginx/html/index.html
EXPOSE 80


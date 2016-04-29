FROM ubuntu:14.04
MAINTAINER Abel Deng "abeldeng@qq.com"
ENV REFRESHED_AT 2016-4-22-11-07
RUN apt-get update

RUN apt-get install -y subversion
VOLUME ["/src"]
WORKDIR /src

ENTRYPOINT ["/usr/bin/svn"]


FROM ubuntu:14.04
MAINTAINER Abel Deng "abeldeng@qq.com"
ENV REFRESHED_AT 2016-4-22-11-07
RUN apt-get update

RUN apt-get -y install wget
VOLUME ["/var/lib/tomcat7/webapps/"]
WORKDIR /var/lib/tomcat7/webapps/

ENTRYPOINT ["wget"]
CMD ["-?"]

FROM python
MAINTAINER Abel Deng "abeldeng@qq.com"
ENV REFRESHED_AT 2016-4-22-11-07
RUN apt-get update

ADD . /composeapp

WORKDIR /composeapp

RUN pip install -r requirements.txt


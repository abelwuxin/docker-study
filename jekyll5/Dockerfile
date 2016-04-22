FROM ruby
MAINTAINER Abel Deng "abeldeng@qq.com"
ENV REFRESHED_AT 2016-4-22-11-07
RUN apt-get update

#RUN apt-get -y install ruby ruby-dev make nodejs
RUN apt-get -y install make nodejs
RUN gem install --no-rdoc --no-ri jekyll

VOLUME /data/
VOLUME /var/www/html
WORKDIR /data

ENTRYPOINT ["jekyll", "build", "--destination=/var/www/html"]


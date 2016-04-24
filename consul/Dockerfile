FROM ubuntu:14.04
MAINTAINER Abel Deng "abeldeng@qq.com"
ENV REFRESHED_AT 2016-4-22-11-07
RUN apt-get update

RUN apt-get -y install curl unzip

ADD https://releases.hashicorp.com/consul/0.6.4/consul_0.6.4_linux_amd64.zip /tmp/consul.zip
RUN cd /usr/sbin && unzip /tmp/consul.zip && chmod +x /usr/sbin/consul && rm /tmp/consul.zip
ADD consul.json /config/

ADD https://releases.hashicorp.com/consul/0.6.4/consul_0.6.4_web_ui.zip /tmp/webui.zip
RUN cd /tmp/ && unzip webui.zip && mv * /webui/

EXPOSE 53/udp 8300 8301 8301/udp 8302 8302/udp 8400 8500

VOLUME ["/data"]

ENTRYPOINT [ "/usr/sbin/consul", "agent", "-config-dir=/config" ]
CMD []

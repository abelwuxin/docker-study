FROM registry.aliyuncs.com/abeldeng/redis
MAINTAINER Abel Deng "abeldeng@qq.com"
ENV REFRESHED_AT 2016-4-22-11-07

ENTRYPOINT [ "redis-server", "--logfile /var/log/redis/redis-replica.log", "--slaveof redis-primary 6379" ]


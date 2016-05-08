/redis/src/redis-server --protected-mode no /redis-conf/7000/redis.conf
/redis/src/redis-server --protected-mode no /redis-conf/7001/redis.conf
/redis/src/redis-server --protected-mode no /redis-conf/7002/redis.conf
/redis/src/redis-server --protected-mode no /redis-conf/7003/redis.conf
/redis/src/redis-server --protected-mode no /redis-conf/7004/redis.conf
/redis/src/redis-server --protected-mode no /redis-conf/7005/redis.conf
/redis/src/redis-server --protected-mode no /redis-conf/7006/redis.conf
/redis/src/redis-server --protected-mode no /redis-conf/7007/redis.conf

sleep 3

IP=`ifconfig | grep "inet addr:17" | cut -f2 -d ":" | cut -f1 -d " "`
echo "yes" | ruby /redis/src/redis-trib.rb create --replicas 1 ${IP}:7000 ${IP}:7001 ${IP}:7002 ${IP}:7003 ${IP}:7004 ${IP}:7005
tail -f /var/log/supervisor/redis-1.log

/redis/src/redis-server /redis-conf/7000/redis.conf --protected-mode no
/redis/src/redis-server /redis-conf/7001/redis.conf --protected-mode no
/redis/src/redis-server /redis-conf/7002/redis.conf --protected-mode no
/redis/src/redis-server /redis-conf/7003/redis.conf --protected-mode no
/redis/src/redis-server /redis-conf/7004/redis.conf --protected-mode no
/redis/src/redis-server /redis-conf/7005/redis.conf --protected-mode no
/redis/src/redis-server /redis-conf/7006/redis.conf --protected-mode no
/redis/src/redis-server /redis-conf/7007/redis.conf --protected-mode no

sleep 3

IP=`mob.abeldeng.com`
echo "yes" | ruby /redis/src/redis-trib.rb create --replicas 1 ${IP}:7000 ${IP}:7001 ${IP}:7002 ${IP}:7003 ${IP}:7004 ${IP}:7005

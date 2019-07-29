#!/bin/bash
export REDIS_HOME=/usr/local/redis-4.0.6
echo "----------Redis start---------------"
/usr/local/bin/redis-server $REDIS_HOME/redis.conf
echo "----------Redis start successful----"
#!/bin/bash
export REDIS_HOME=/usr/local/redis-4.0.6
echo "----------Redis start---------------"
redis-server $REDIS_HOME/redis.conf
echo "----------Redis start successful----"
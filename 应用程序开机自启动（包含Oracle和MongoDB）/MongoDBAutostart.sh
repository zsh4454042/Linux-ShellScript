#!/bin/bash
export MONGODB_HOME=/usr/local/mongodb-linux-x86_64-3.6.4
mongodLock="/data/mongodb/mongodb_data/mongod.lock"
if [ -f "$mongodLock" ]; then
echo "----------MongoDB locked--------------"
rm $mongodLock
echo "----------MongoDB unlocked------------"
fi
echo "----------MongoDB start---------------"
$MONGODB_HOME/bin/mongod -f /data/mongodb/mongo.conf
echo "----------MongoDB start successful----"
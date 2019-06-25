#!/bin/bash
export MONGODB_HOME=/usr/local/mongodb-linux-x86_64-3.6.4
dateStr=$(date '+%Y%m%d%H%M%S');
srcPath=/home/enovell/MongoDBBackup/$dateStr;
mkdir $srcPath;
dbName=kmad;
$MONGODB_HOME/bin/mongodump --db $dbName --authenticationDatabase $dbName --port 27000 --username rinms2 --password "rinms2" --out $srcPath;
targetPath=/home/enovell/MongoDBBackup;
su - enovell -c "scp -r $srcPath enovell@172.23.1.5:$targetPath";

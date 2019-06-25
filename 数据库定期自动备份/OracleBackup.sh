#!/bin/bash
export ORACLE_HOME=/home/oracle/app/product/11.2.0/dbhome_1
dateStr=$(date '+%Y%m%d%H%M%S');
srcPath=/home/enovell/OracleBackup/$dateStr.dmp; 
$ORACLE_HOME/bin/exp rinms2/rinms2@orcl file=$srcPath
targetPath=/home/enovell/OracleBackup
su - enovell -c "scp -r $srcPath enovell@172.23.1.5:$targetPath"

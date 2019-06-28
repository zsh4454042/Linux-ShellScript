#!/bin/bash
export JRE_HOME=/opt/jdk1.8.0_152
export MICRO_SERVICES_HOME=/opt/extend/cjDwc/busi
microServices="rserver-0.0.1.jar home-0.0.1.jar std-0.0.1.jar pageoffice-chengdu-0.0.1.jar processHandle-0.0.1.jar"
for service in $microServices
do
echo "----------Microservices $service start---------------"
nohup $JRE_HOME/bin/java -cp . -server -jar $MICRO_SERVICES_HOME/$service  > /dev/null 2 >&1 &
echo "----------Microservices $service start successful----"
done
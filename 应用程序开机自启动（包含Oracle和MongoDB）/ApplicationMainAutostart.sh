#!/bin/bash
echo "----------1、Oracle Run------------------------"
sh /opt/OracleAutostart.sh
echo "-------------Oracle Run End--------------------"
echo "----------2、MongoDB Run-----------------------"
sh /opt/MongoDBAutostart.sh
echo "-------------MongoDB Run End-------------------"
echo "----------3、Redis Run-------------------------"
sh /opt/RedisAutostart.sh
echo "-------------Redis Run End---------------------"
echo "----------4、Tomcat Run------------------------"
sh /opt/TomcatAutostart.sh
echo "-------------Tomcat Run End--------------------"
echo "----------5、Microservices Run-----------------"
sh /opt/MicroservicesAutostart.sh
echo "-------------Microservices Run End-------------"
#!/bin/bash
export JRE_HOME=/opt/jdk1.8.0_152
export TOMCAT_HOME=/opt/apache-tomcat-8.5.32_chengdu
echo "----------Tomcat start---------------"
$TOMCAT_HOME/bin/startup.sh
echo "----------Tomcat start successful----"

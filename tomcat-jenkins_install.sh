#!/bin/bash
sudo amazon-linux-extras install java-openjdk11 -y
mkdir -p /opt/tomcat
cd /opt/tomcat/
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.80/bin/apache-tomcat-9.0.80.zip
unzip apache-tomcat-9.0.80.zip
rm -rf apache-tomcat-9.0.80.zip
cd /opt/tomcat/apache-tomcat-9.0.80/bin/
chmod 777 startup.sh shutdown.sh catalina.sh
./startup.sh
cd /opt/tomcat/apache-tomcat-9.0.80/webapps/
wget https://get.jenkins.io/war-stable/2.401.3/jenkins.war

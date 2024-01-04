
#################### jenkins as application ######################################
-------------------------------------------
#!/bin/bash
sudo amazon-linux-extras install java-openjdk11 -y
mkdir -p /opt/tomcat
cd /opt/tomcat/
wget https://archive.apache.org/dist/tomcat/tomcat-10/v10.0.0/bin/apache-tomcat-10.0.0.zip
unzip apache-tomcat-10.0.0.zip
rm -rf apache-tomcat-10.0.0.zip
cd /opt/tomcat/apache-tomcat-10.0.0/bin/
chmod 777 startup.sh shutdown.sh catalina.sh
./startup.sh
cd /opt/tomcat/apache-tomcat-10.0.0/webapps/
wget https://get.jenkins.io/war-stable/2.401.3/jenkins.war
-----------------------------------------------------
############# jenkins as server ####################################################
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade
# Add required dependencies for the jenkins package
sudo yum install fontconfig java-17-openjdk
sudo yum install jenkins
sudo systemctl daemon-reload
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins
-----------------------------------------------

//how to resolve 403 error in tomcat
vi /mnt/apache-tomcat-10.0.0/conf/tomcat-user.xml
<role rolename="manager-gui"/>
<role rolename="admin-gui"/>
<user username="admin" password="admin" roles="admin-gui"/>
<user username="manager" password="admin" roles="manager-gui"/>

vi /mnt/apache-tomcat-10.0.0/webapps/manager/META-INFO/contex.xml 
and in same 
vi /mnt/apache-tomcat-10.0.0/webapps/host-manager/META-INFO/contex.xml
valve after this   <.. at the end of line  -->!

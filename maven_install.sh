#!/bin/bash
amazon-linux-extras install java-openjdk11 -y

cd /opt/
mkdir maven
cd /opt/maven/
wget https://dlcdn.apache.org/maven/maven-3/3.9.4/binaries/apache-maven-3.9.4-bin.zip
unzip apache-maven-3.9.4-bin.zip

echo "export PATH=/opt/maven/apache-maven-3.9.4/bin:$PATH" >> ~/.bashrc
echo "export MAVEN_HOME=/opt/maven/apache-maven-3.9.4" >> ~/.bashrc
echo "export M2_HOME=/opt/maven/apache-maven-3.9.4" >> ~/.bashrc
echo "export M2=/home/opt/maven/apache-maven-3.9.4bin" >> ~/.bashrc

source ~/.bashrc

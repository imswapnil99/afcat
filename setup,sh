#!/bin/sh
sudo su - root
yum install wget -y
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum upgrade -y
sudo yum install jenkins java-1.8.0-openjdk-devel -y
sudo systemctl daemon-reload
sudo systemctl status jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins
echo "Jenkins setup done"
echo "what is aws public ip??"
read ip
echo "use this URL $ip:8080"

#!/bin/sh
echo "what is your name?"
read name
echo "How do you do, $name?"
read remark
echo "I am $remark too!"

echo "Please be patient ->> INSTALLATION WILL TAKE SOME TIME ;)"

#sudo yum upgrade -y
yum install wget -y
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

sudo yum install jenkins java-1.8.0-openjdk-devel -y
sudo systemctl daemon-reload

sudo systemctl start jenkins
sudo systemctl enable jenkins
#sudo systemctl status jenkins
echo "jenkins Stared"
echo "$name jenkins setup completed"
echo "what is aws public / localhost ip??"
read ip

pass=$(cat /var/lib/jenkins/secrets/initialAdminPassword)

echo "use this URL --->>>>  http://$ip:8080/  "
echo "user: admin"
echo "passwork is :  $pass "


echo "HAVE A GREAT DAY & WEAR MASK"

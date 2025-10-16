
#! /bin/bash
sudo yum update -y
sudo yum install -y openjdk-17-jdk
java -version
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/yum/sources.list.d/jenkins.list > /dev/null
sudo yum update -y
sudo yum install -y jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins

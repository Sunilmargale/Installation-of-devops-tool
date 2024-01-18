#!/bin/bash

sudo yum update -y

sudo yum upgrade -y 

sudo yum install java-1.8.0sudo yum remove java-1.7.0-openjdk

sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo

sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

sudo yum install jenkins -y

sudo systemctl enable jenkins

sudo systemctl start jenkins

sudo systemctl status jenkins

    

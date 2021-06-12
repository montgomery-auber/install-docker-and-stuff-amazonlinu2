#!/bin/bash 
sudo yum update -y 
sudo amazon-linux-extras install docker -y
sudo service docker start
sudo usermod -a -G docker ec2-user
sudo systemctl enable docker --now
sudo chkconfig docker on
sudo yum install -y git screen curl wget telnet nc iputils-ping
sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo reboot

# https://gist.github.com/npearce/6f3c7826c7499587f00957fee62f8ee9
# https://aws.amazon.com/blogs/mt/keeping-ansible-effortless-with-aws-systems-manager/
# https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-state-manager-ansible.html

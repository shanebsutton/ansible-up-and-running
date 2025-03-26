#!/bin/bash
echo "Starting provisioning of Ansible..."

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update -y
sudo apt-get install ansible -y
sudo apt-get install yamllint ansible-lint -y

sudo apt-get install python3-pip -y
pip3 install wheel
pip3 install pywinrm[kerberos]

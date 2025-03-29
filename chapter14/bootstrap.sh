#!/bin/bash
echo "........................................................"
echo "Starting provisioning of Ansible and support packages..."

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update -y
sudo apt-get install ansible python3-pip libssl-dev python3-venv -y
#sudo apt-get install yamllint ansible-lint -y

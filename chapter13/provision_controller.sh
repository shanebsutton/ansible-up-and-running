#!/bin/bash
echo "..................................."
echo "Starting provisioning of Ansible..."

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update -y
sudo apt-get install ansible -y
sudo apt-get install yamllint ansible-lint python3-pip -y

# echo "..................................."
# echo "Starting provisioning of Python packages..."
## Skipping this for now, as I was having trouble with certain things
## working correctly in the venv. For example, yamllint was throwing
## errors in the venv, but not outside of it for the same files.
## Probably lack of understanding of something...

# sudo apt-get install python3-pip python3-venv -y
# python3 -mvenv py3
# source py3/bin/activate
# pip3 install --upgrade pip
# pip3 install wheel
# pip3 install -r /vagrant/requirements.txt

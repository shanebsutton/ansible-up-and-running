#!/bin/bash
# Copy contents of Vagrant synced folder.
# Done to avoid symlink issues in shared folder between guest and host.
# For more info and alternatives, see:
#  https://www.thomaswiesner.com/running-vagrant-with-symbolic-links-enabled
#  https://stackoverflow.com/questions/24200333/symbolic-links-and-synced-folders-in-vagrant
cp -r -u /vagrant/. ~

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install python3-venv libssl-dev -y

echo "............................................................"
echo "Creating venv, installing Ansible and support packages..."

python3 -m venv .venv
source .venv/bin/activate
python3 -m pip install --upgrade pip
pip3 install wheel
pip3 install -r requirements.txt

# Install system wide
#sudo apt-add-repository ppa:ansible/ansible -y
#sudo apt-get update -y
#sudo apt-get install ansible python3-pip libssl-dev python3-venv -y
#sudo apt-get install yamllint ansible-lint -y

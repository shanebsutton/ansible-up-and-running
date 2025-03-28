#!/bin/bash
# Docker
# From: <https://docs.docker.com/engine/install/ubuntu/>
echo ".................................."
echo "Starting provisioning of Docker..."

# Clean up previous packages, if any
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done

# Add Docker's official GPG key:
sudo apt-get install ca-certificates curl -y
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

# Install Docker packages
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

sudo apt-get install python3-pip -y
# Specific version, see comment for context:
#  <https://stackoverflow.com/questions/77641240/getting-docker-compose-typeerror-kwargs-from-env-got-an-unexpected-keyword-ar>
pip3 install docker==6.1.3
# WARNING: The script normalizer is installed in '/home/vagrant/.local/bin' which is not on PATH.
pip3 install docker-compose
#   WARNING: The script dotenv is installed in '/home/vagrant/.local/bin' which is not on PATH.
#   Consider adding this directory to PATH or, if you prefer to suppress this warning, use --no-warn-script-location.
#   WARNING: The script distro is installed in '/home/vagrant/.local/bin' which is not on PATH.
#   Consider adding this directory to PATH or, if you prefer to suppress this warning, use --no-warn-script-location.
#   WARNING: The script docker-compose is installed in '/home/vagrant/.local/bin' which is not on PATH.
#   Consider adding this directory to PATH or, if you prefer to suppress this warning, use --no-warn-script-location.

pip3 install requests==2.31.0

# Update permissions
sudo usermod -aG docker vagrant

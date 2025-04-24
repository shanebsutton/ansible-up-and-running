# Copy contents of Vagrant synced folder.
# Done to avoid symlink issues in shared folder between guest and host.
# For more info and alternatives, see:
#  https://www.thomaswiesner.com/running-vagrant-with-symbolic-links-enabled
#  https://stackoverflow.com/questions/24200333/symbolic-links-and-synced-folders-in-vagrant
cp -r -u /vagrant/. ~
sudo dnf update -y
sudo dnf upgrade -y
sudo dnf install git -y
# Fix line endings, just in case.
#dos2unix install.rc
#source install.rc
python3 -m venv .venv
source .venv/bin/activate
python3 -m pip install --upgrade pip
pip3 install wheel
pip3 install -r requirements.txt

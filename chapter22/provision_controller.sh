# Copy contents of Vagrant synced folder.
# Done to avoid symlink issues in shared folder between guest and host.
# For more info and alternatives, see:
#  https://www.thomaswiesner.com/running-vagrant-with-symbolic-links-enabled
#  https://stackoverflow.com/questions/24200333/symbolic-links-and-synced-folders-in-vagrant
cp -r -u /vagrant/. ~
# Fix line endings, just in case.
dos2unix install.rc
source install.rc
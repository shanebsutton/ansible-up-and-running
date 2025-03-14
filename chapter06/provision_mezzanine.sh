# Can run the following manually...
sudo apt-get update
sudo apt-get install -y python3-venv
python3 -m venv venv
source venv/bin/activate
pip3 install wheel
pip3 install mezzanine
mezzanine-project myproject
cd myproject
sed -i 's/ALLOWED_HOSTS = \[\]/ALLOWED_HOSTS = ["*"]/' myproject/settings.py
# Also need to add the IP of the controller here, as we are not using WSl.
# And, for my setup, I had to update myproject/local_settings.py
python manage.py migrate
python manage.py runserver 0.0.0.0:8000
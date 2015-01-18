#install the sklearn module
sudo apt-get install -y python-sklearn
sudo apt-get install -y build-essential python-dev python-setuptools \
                     python-numpy python-scipy \
                     libatlas-dev libatlas3gf-base

#check the sklearn module
nosetests -v sklearn

#!/bin/bash


#[[ .. ]] is equivalent to 'test' command 
if test echo $PATH|tr -s ':' '\n'|grep -x -c /usr/local/bin 
then
	echo '/usr/local/bin is already in PATH.'
else
	echo "=> export PATH=/usr/local/bin:$PATH"
	export PATH=/usr/local/bin:$PATH
	echo "reload the bash profile ..."
	source ~/.bash_profile
fi

echo 'brew install for scientific python modules'
brew install python
pip install virtualenv
pip install virtualenvwrapper
pip install numpy
brew install gfortran
pip install scipy
brew install freetype libpng pyqt
pip install matplotlib
pip install ipython

#for iptest no error report
pip install Jinja2 #jinja2 for ipython notebook
brew install casperjs 
pip install  cython oct2py pymongo requests sphinx
pip install rpy2
brew tap homebrew/science
brew install gcc

#install R tools on Mac OSX
wget -c http://r.research.att.com/mavericks/R-3.1-branch/R-3.1-branch-mavericks.pkg
sudo installer -verbose -pkg "R-3.1-branch-mavericks.pkg" -target / # install .pkg file
#if install Caskroom properly and then install octave
brew install Caskroom/cask/java &&  brew install octave 


#install python packages
pip install tornado 
brew install zeromq --universal
pip install pyzmq
pip install pygments
 
# install the QT libraries as described 
# in the text below before continuing
brew install pyqt
brew install zmq

#check working properly
brew update
brew doctor
pip install virtualenv
pip install virtualenvwrapper

#install automated test tool selenium
sudo easy_install selenium

#install chromedriver for mac
wget -c http://chromedriver.storage.googleapis.com/2.9/chromedriver_mac32.zip
unzip chromedriver_mac32.zip 
sudo cp chromedriver /usr/bin

<<PS:
1. Download chromedriver from here
2 Unzip it
3. Drag it to /usr/bin ( to locate /usr/bin : go to finder, from the go menu go to folder )
You may need to right click on the chrome driver and open it, this is because sometimes on Mavericks if the app is unsigned it doesn’t execute, so you will have to specifically run it. 
4. Restart your system (don’t ask me why :) )
5. Update your properties file to request your webdriver to chrome
PS



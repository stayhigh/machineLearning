#!/bin/bash


#[[ .. ]] is equivalent to 'test' command 
if test echo $PATH|tr -s ':' '\n'|grep -x -c /usr/local/bin 
then
	echo '/usr/local/bin is already in PATH.'
else
	echo "export PATH=/usr/local/bin:\$PATH" >> ~/.bash_profile
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
brew install freetype
pip install matplotlib
pip install ipython
 
# install the QT libraries as described 
# in the text below before continuing
brew install pyqt
brew install zmq
pip install pyzmq
pip install pygments

#check working properly
brew update
brew doctor

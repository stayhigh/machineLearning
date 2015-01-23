#!/bin/bash

brew install nginx 
#setup auto start nginx
sudo cp -v /usr/local/opt/nginx/*.plist /Library/LaunchDaemons/
sudo chown root:wheel /Library/LaunchDaemons/homebrew.mxcl.nginx.plist

#echo restart the nginx service
#configuration: /usr/local/etc/nginx/nginx.conf
sudo nginx -s stop && sudo nginx
#your could run 'open http://localhost:8080' to check ngnix work properly
#check web server is listening on port 8080
curl -IL http://127.0.0.1:8080 |grep "200 OK"
if [ $? -ne 0 ]
then
	tput setaf 1; 
	echo "Curl discover that the Web Server Error "
	tput -s sgr0;
fi


#Because Homebrew doesn't have a default formula for PHP-FPM, we need need to add this first:
brew tap homebrew/dupes
brew tap homebrew/php
brew install --without-apache --with-fpm --with-mysql php55
#export the variable
# If you use Bash    
echo 'export PATH="$(brew --prefix homebrew/php/php55)/sbin:$PATH"' >> ~/.bash_profile && . ~/.bash_profile
# If you use ZSH
#echo 'export PATH="$(brew --prefix homebrew/php/php55)/sbin:$PATH"' >> ~/.zshrc && . ~/.zshrc

#setup auto start
mkdir -p ~/Library/LaunchAgents
cp /usr/local/opt/php55/homebrew.mxcl.php55.plist ~/Library/LaunchAgents/

#start PHP-FPM
launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.php55.plist
lsof -Pni4 | grep LISTEN | grep php #-i for network monitoring, -P show port number instead of port name, -n show network IP instead of hostname, 4 means IPv4

#install mysql
brew install mysql

#setup database auto start
ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents
#or start the database service by launchctl
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
mysql_secure_installation


#install phpMyAdmin
brew install autoconf

# If you use Bash
echo 'PHP_AUTOCONF="'$(which autoconf)'"' >> ~/.bash_profile && . ~/.bash_profile
# If you use ZSH
#echo 'PHP_AUTOCONF="'$(which autoconf)'"' >> ~/.zshrc && . ~/.zshrc
brew install phpmyadmin

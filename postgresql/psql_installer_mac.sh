#!/bin/bash

#install the postgresql
brew install postgresql

#run this command to finish creating the database
initdb /usr/local/var/postgres
mkdir -p ~/Library/LaunchAgents

#start postgres at login
#ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
#launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist




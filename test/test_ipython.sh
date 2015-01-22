#!/bin/bash

iptest

if [ "$?" -ne 0 ] 
then
	tput setaf 1; 
	echo "iptest command GOT ERROR"
	tput sgr0;
fi 

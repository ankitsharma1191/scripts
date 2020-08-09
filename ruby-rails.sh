#!/bin/bash
## Author: Ankit Sharma
## Date: 7-7-2020
## Description: This script will setup ruby on rails on centos8

dnf install curl gnupg2 -y
gpg2 --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable

if [ $? -eq 0 ]
	then
	source /etc/profile.d/rvm.sh
	if [ $? -eq 0 ]
		then
		rvm requirements
		if [ $? -eq 0 ]
			then
			rvm install 2.6.3
			rvm use 2.6.3 --default
			gem install rails
			else 
			echo "rvm  is not installed "
		fi
	fi
	else
	echo " you have error, rails in not setuped"
fi

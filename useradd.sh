#!/bin/bash
echo "please provide username"

read u 

grep -q $u /etc/passwd

if [ $? -eq 0 ]
	then
	echo Eroor -- User $u is Already Exist
	echo  Please Choose Another Useraname
	echo 
	exit 0 
	fi

useradd $u
echo 
echo user $u Created Sucessfully

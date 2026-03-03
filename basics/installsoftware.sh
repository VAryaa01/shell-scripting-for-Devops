#!/bin/bash

#################################################

#Author:Vikash Kumar
#installing multiple packages

#################################################



if [[ $# -eq 0 ]]
then
	echo "Usage: please provide software name as command arguments"
	exit 1
fi

if [[ $(id -u) -ne 0 ]]
then
	echo "Please run from the root user or with sudo privilage"
	exit 2
fi

for software in "$@"
do
	if which "$software" &> /dev/null
	then
		echo "$software is already installed"
	else
		echo "Installing $softwares ........."
		apt install "$softwares" -y &> /dev/null
		if [[ $? -eq 0 ]]
		then
			echo "Successfully installed $softwares package"
		else
			echo "unable to installed $softwares"
		fi
	fi
done



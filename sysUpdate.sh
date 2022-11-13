#!/bin/bash
if [ $EUID -ne 0 ]
then
	echo "This program must run as root"
	exit 1
fi

SYS_DEBIAN=$(cat /etc/os-release | grep -o -m1 "debian")
SYS_ARCH=$(cat /etc/os-release | grep -o -m1 "arch")
if [[ $SYS_DEBIAN == "debian" ]]
then
	printf "$(date "+%d-%m-%Y --- %T") --- Start working\n"

	apt update
	apt -y upgrade 

	apt autoremove
	apt autoclean

elif [[ $SYS_ARCH == "arch" ]]
then
	pacman -Syu
	pacman -Qdtq
else
echo "I don't know this system "	
fi
printf "\n$(date "+%d-%m-%Y --- %T") --- ended work \n"

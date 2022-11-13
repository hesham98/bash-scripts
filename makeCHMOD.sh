#!/bin/bash

pass=$@

if [ -e $pass ]
then
	chmod +x $pass
	echo "This file have excute right now"
elif [ -x $pass ]
then
	echo "this file has already excute right"
else
	echo "This file does not exist"
fi

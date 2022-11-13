#!/bin/bash
read -p "Enter a number please: " var

if [ $var -gt 10 ]
then
	echo "The number is greater than 10"
elif [ $var -eq 10 ]
then
	echo "The number is equal to 10"
else
	echo "The number is less than 10"
fi

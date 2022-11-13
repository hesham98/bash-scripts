#!/bin/bash

read -p "Enter your age please: " age

if [ $age -eq 23 ]
then
	printf "\nyou are 23 years old\n"
else
	printf "you are not 23 years old\nand you are $age years old\n"
fi	

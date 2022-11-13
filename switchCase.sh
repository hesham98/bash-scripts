#!/bin/bash

echo "Enter a for list files"
echo "Enter b for list users"
echo "Enter c for see uptime"
printf "Enter d for see time and date\n"

read input

case $input in
	a|A)ls;;
	b|B)who;;
	c|C)uptime;;
	d|D)date;;
	*)echo "Invalid choice"
esac

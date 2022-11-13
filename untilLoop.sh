#!/bin/bash

count=1
echo "How many number of loop do you want?"
read num
until [ $count -gt $num ] 
do
	echo "count is now $count"
	let count=count+1
done

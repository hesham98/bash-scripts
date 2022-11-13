#!/bin/bash

count=0

while [ $count -lt 10 ]
do
	count=$(($count+1))
	printf "$count seconds to end\n"
	sleep 1
	
done
printf "procces in ended\n"

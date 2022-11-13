#!/bin/bash

path=$@
while read line
do
	for i in $(echo "$line" | sed "s/,/ /g")
	do
		if [[ ${#i} -gt 6 && "$i" == *[A-Z]* && "$i" == *[a-z]* && "$i" == *[0-9]* && "$i" == *[@#$]* ]]
		then
			echo " $i"
		fi
	done
done<"$path"

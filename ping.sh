#!/bin/bash 

if [[ -n $1 ]]; then
	store="$1"
	ping -c 2 "$store" > /dev/null 2>&1

	status=$?
	if (( status == 0 )); then
		echo 'UP'
		exit 0
	else
		echo 'DOWN'
		exit 1
	fi
else 
	echo 'Usage: ./check.sh <host>' 
	exit 2  	
fi


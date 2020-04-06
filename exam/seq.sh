#!/bin/bash

message="Usage:$0 FIRST INCREMENT LAST"

if [ "$#" -eq 3  ]; then
	if [ "$3" -gt "$1" -a "$2" -gt 0 -o "$3" -lt "$1" -a "$2" -lt 0 ]; then
		i="$1"
		while [ "$i" -ge "$3" -a "$i" -le "$3" ]; do
			echo "$i"	
			i=$(("$i"+"$2"))
		done
	elif [ "$3" -eq "$1" ]; then
		echo "$1"
		exit 0
	else
		echo "$message"
		exit 1
	fi	
else
	echo "$message" 
	exit 1
fi

#!/bin/bash

message="Usage:$0 FIRST INCREMENT LAST"

if [ "$#" -eq 3 ]; then
	if [ $3 -gt $1 ]; then
		if [ $2 -gt 0 ]; then
			i=$1
			while [ $i -le $3 ]; do
				echo $i
				i=$(($i + $2))
			done
			exit 0
		else
			exit 1
		fi

	elif [ $3 -lt $1 ]; then
		if [ $2 -lt 0 ]; then
			i=$1
			while [ $i -ge $3 ]; do
				echo $i
				i=$(($i + $2))
			done
			exit 0
		else
			exit 1
		fi
	#if FIRST and LAST are equal
	else
		echo $1
		exit 0
	fi
else
	echo "$message"
	exit 1
fi

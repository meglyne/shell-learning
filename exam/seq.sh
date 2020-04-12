#!/bin/bash

message="Usage:$0 FIRST INCREMENT LAST"
# if there are 3 parameters
if [ "$#" -eq 3 ]; then
	# if FIRST is less than LAST
	if [ $3 -gt $1 ]; then
		# if INCREMENT is positive
		if [ $2 -gt 0 ]; then
			i=$1
			while [ $i -le $3 ]; do
				echo $i
				i=$(($i + $2))
			done
			#exit with code 0
			exit 0
		# if INCREMENT is negative
		else
			#exit with an error
			exit 1
		fi
	# if FIRST is greater than LAST
	elif [ $3 -lt $1 ]; then
		# if INCREMENT is negative
		if [ $2 -lt 0 ]; then
			i=$1
			while [ $i -ge $3 ]; do
				echo $i
				i=$(($i + $2))
			done
			exit 0
		#if INCREMENT is positive
		else
			exit 1
		fi
	#if FIRST and LAST are equal
	else
		echo $1
		exit 0
	fi
# if the number of arguments is incorrect
else
	echo "$message"
	exit 1
fi

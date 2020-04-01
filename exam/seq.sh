#!/bin/bash

if [ $# -eq 3  ]; then
	echo "3 arguments" 
else
	echo "Usage:$0 FIRST INCREMENT LAST"
	exit 1
fi

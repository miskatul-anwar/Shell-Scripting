#! /usr/bin/bash

num=$1

for ((i = 1; i <= num; i++)); do
	echo -e "\033[95mIt's awesome!\033[95m"
	sleep 0.5
done

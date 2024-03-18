#! /usr/bin/bash
name=$1
echo $line
line=$(tput cols)
for ((i = 1; i <= line / 2; i++)); do
	printf "=-"
done
cat $name | nl -b a | lolcat
for ((i = 1; i <= line / 2; i++)); do
	printf "=-"
done

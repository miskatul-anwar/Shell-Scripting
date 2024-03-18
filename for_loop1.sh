#! /usr/bin/bash

echo -e "enter a number: \c"
read num

for i in { 0 .. $num .. 1 }; do
	echo $i | lolcat
done

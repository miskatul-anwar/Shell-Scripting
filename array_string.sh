#! /usr/bin/bash
array=('Miskatul' 'Anwar' 'is' 'My' 'Name')

echo "${array[@]}"
echo "${array[0]}"
echo "${array[1]}"
echo "${!array[@]}"
echo "${#array[@]}"
array[6]='mac'
echo "${array[6]}"
miskat=Thereareso
echo "${miskat[@]}"

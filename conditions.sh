#! /usr/bin/zsh

echo -e "Enter a number:\c"
read num

if [[ $num -le 5 ]]; then
    echo "Condition filled !"
elif  [[ $num -ge 6 ]]; then 
    echo "sorry!"
fi
#! /usr/bin/bash 
name=$1
echo $line  
line=$(tput cols)
for((i=1;i<=line/2;i++)){
  printf "=-"
}
cat $name | nl -b a | lolcat
for((i=1;i<=line/2;i++)){
  printf "=-"
}


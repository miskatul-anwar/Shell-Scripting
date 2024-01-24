#! /usr/bin/bash 
lim=$(tput cols) 

for((i=0;i<=3;i++))do 
  for((j=0;j<=lim;j++))do 
    if(( (i+j)%4==0 || (i==2 && j%4==0))); then
      printf "*"
    else 
      printf " "
    fi 
  done
  printf "\n"
done

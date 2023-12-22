#! /usr/bin/bash

echo -e "Enter File Name: \c"
read Name
printf "\n"
if [[ -e $Name ]]; then echo "File Info:" | lolcat && file $Name && printf "\nFound At: " |lolcat && pwd
  if [[ -s $Name ]]; then echo ">>>>>>>>>>>Healthy File."  
    
  fi
else
  echo "Not Found"
    
  
fi
  

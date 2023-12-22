#! /usr/bin/bash
echo -e "Enter a charracter:\c"
read charracter

case $charracter in 
  [a-z])
    echo "The charracter $charracter is with in a to z. ";;
  [A-Z])
    echo "The charracter $charracter is with in A to Z.";;
  [0-9])
    echo "User enter value from 0 to 9";;
  *)
    echo "invalid";
esac

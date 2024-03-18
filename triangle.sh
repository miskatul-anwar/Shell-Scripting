#! /usr/bin/bash
echo -e "Enter the number of rows:\c"
read num
while [[ i -le $num ]]; do 
    echo $i
    i=$((i+1))
done

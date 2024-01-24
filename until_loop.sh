#! /usr/bin/bash
i=1
until [[ i -ge 10 ]]; do 
    echo $i
    (( i++ ))
    sleep 2
done
#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Please provide the name of the C file as an argument."
    exit 1
fi

name=$1

echo "----------Provided By: Miskatul Anwar----------" | lolcat

function rotating_bar() {
    local chars="/-\|"
    local SECONDS_LIMIT=2
    local start_time=$SECONDS

    while (( SECONDS - start_time < SECONDS_LIMIT )); do
        for (( i=0; i<${#chars}; i++ )); do
            echo -ne "${chars:$i:1}" "\r"
            sleep 0.1
        done
    done
}

rotating_bar

echo -e "\033[94m------------------SOURCE CODE------------------\033[0m"
cat "$name.c"

echo -e "\033[94m====================Warnings===================\033[0m"
if ! clang -g -Wall "$name.c" -o "$name"; then
    echo -e "\033[91mCompilation failed. Exiting...\033[0m"
    exit 1
fi

echo -e "\033[94m--------------------Hex Dump-------------------\033[0m"
valgrind ./$name

echo -e "\033[94m---------------Current Directory---------------\033[0m"
pwd

echo -e "\033[95m--------------------=OUTPUT=-------------------\033[0m"
if [ -x "$name" ]; then
    ./"$name"
else
    echo -e "\033[91mExecutable not found. Exiting...\033[0m"
fi

printf "\n"
echo -e "\033[92m|||||||||||||||||||||||||||||||||||||||||||||||\033[0m"
printf "\n-----------------------GDB---------------------\n" | lolcat
gdb "$name"

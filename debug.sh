echo "----------Provided By: Miskatul Anwar----------" | lolcat
echo  -e "\033[92m|||||||||||||||||||||||||||||||||||||||||||||||\033[0m"
echo -e "\033[31;47mEnter the program name to debug:\033[0m \c"
read name
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
cat $name.c
echo -e "\033[94m====================Warnings===================\033[0m"
clang -g -Wall $name.c -o $name
echo -e "\033[94m--------------------Hex Dump-------------------\033[0m"
xxh32sum $name
echo -e "\033[94m---------------Current Directory---------------\033[0m"
pwd
echo -e "\033[95m--------------------=OUTPUT=-------------------\033[0m"
./$name
printf "\n"
echo -e "\033[92m|||||||||||||||||||||||||||||||||||||||||||||||\033[0m"
printf "\n-----------------------GDB---------------------\n" | lolcat
gdb $name


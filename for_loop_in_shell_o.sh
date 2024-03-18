#using for loop
echo -e "Enter Number: \c"
read num

for ((i=0;i<=$num;i++)); do 
    echo $i 
done 

#using while loop
i=1
while [[ i -le $num ]]; do 
    printf "$i "
    ((i++))
done
printf "\n"
#using until loop
#until

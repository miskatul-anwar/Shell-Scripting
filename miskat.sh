echo -e "Enter the desired software/tool/utility name: \c"
read name
echo "Miskat :)" | lolcat
pacman -Ss $name | grep $name | bat

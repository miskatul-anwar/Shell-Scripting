echo "Miskatul Anwar" | lolcat
username=$(git config user.name)
echo "https://github.com/$username" | lolcat
a=$(date)
b=$(pwd)
lim=$(tput cols)
for ((i = 1; i <= $lim; i++)); do
	printf "="
done
printf "\n"
git add .
printf "\n"
git commit -m "$a"
for ((i = 1; i <= $lim; i++)); do
	printf "-"
done
git push origin main
for ((i = 1; i <= $lim; i++)); do
	printf "="
done
printf "\n"
echo "Process:: $b --> main" | lolcat
echo "Successfull! 🤠 "

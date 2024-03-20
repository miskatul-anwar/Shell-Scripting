echo "Miskatul Anwar" | lolcat
echo "https://github.com/miskatul-anwar" | lolcat
a=$(date)
b=$(pwd)
lim=$(tput cols)
for ((i = 1; i <= $lim; i++)); do
	printf "="
done
printf "\n"
git add .
for ((i = 1; i <= $lim; i++)); do
	printf "-"
done
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

echo "Miskatul Anwar" | lolcat
username=$(git config user.name)
email=$(git config user.email)
echo "https://github.com/$username ==> 🤖" | lolcat
echo "💌 <-- $email" | lolcat
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
printf "\n"
git push origin main
printf "\n"
for ((i = 1; i <= $lim; i++)); do
	printf "="
done
echo "Process:: $b --> main" | lolcat
echo "Successfull! 🤠 "

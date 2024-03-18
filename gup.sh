echo "Miskatul Anwar" | lolcat
echo "https://github.com/miskatul-anwar" | lolcat
a=$(date)
b=$(pwd)
lim=$(tput cols)
for ((i = 0; i <= $lim; i++)); do
	echo "="
done
git add .
git commit -m "$a"
git push origin main
for ((i = 0; i <= $lim; i++)); do
	echo "="
done
echo "Process:: $b --> main" | lolcat
echo "Successfull! 🤠 "

echo "Miskatul Anwar" | lolcat
echo "https://github.com/miskatul-anwar" | lolcat
echo $a
a=$(date)
echo $b
b=$(pwd)
git add .
git commit -m "$a"
git push origin main
echo "Process:: $b --> main" | lolcat
echo "Successfull! 🤠 "

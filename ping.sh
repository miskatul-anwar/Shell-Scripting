for ((i = 1; i <= 10; i++)); do
	figlet $i | lolcat
	cowsay "$(date +'%T')"
	URL="https://github.com/miskatul-anwar/README.md"
	curl -s -o /dev/null "$URL"
	sleep 1
done

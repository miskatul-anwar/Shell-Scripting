#!/usr/bin/env bash

while true; do
	print_center() {
		local text="$1"
		local width=$(tput cols)
		local padding=$((($width + ${#text}) / 2))
		printf "%*s\n" $padding "$text"
	}

	text="𝐵𝓊𝒾𝓁𝒹𝒪𝓃𝒯𝒽𝑒𝐹𝓁𝓎"
	output=$(toilet -f term -F border "$text")

	padding=$((($(tput cols) - $(echo "$output" | wc -L)) / 2))

	echo "$output" | awk -v pad="$padding" '{printf "%*s%s\n", pad, "", $0}' | lolcat

	print_center "Output"

	printf "%*s\n" "$(tput cols)" | tr ' ' '-'

	filename="$1"
	flags="$2"

	if [ -z "$filename" ]; then
		cowsay "Error: No filename provided." | lolcat
		exit 1
	fi

	case "$filename" in
	*.c)
		filename_without_extension="${filename%.c}"
		clang "$filename" $flags -o "$filename_without_extension" && ./"$filename_without_extension"
		;;
	*.cpp)
		filename_without_extension="${filename%.cpp}"
		clang++ "$filename" -o "$filename_without_extension" && ./"$filename_without_extension"
		;;
	*.py)
		python "$filename"
		;;
	*.sh)
		chmod +x "$filename" && ./"$filename"
		;;
	*.java)
		javac "$filename" && java "${filename%.java}"
		;;
	*.cs)
		mcs "$filename" && mono "${filename%.cs}.exe"
		;;
	*)
		cowsay "Unknown file type or no file extension." | lolcat
		;;
	esac

	printf "%*s\n" "$(tput cols)" | tr ' ' '-'
done

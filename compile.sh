#!/usr/bin/bash
print_center() {
	local text="$1"
	local width=$(tput cols)
	local padding=$((($width + ${#text}) / 2))
	printf "%*s\n" $padding "$text"
}

text="𝐵𝓊𝒾𝓁𝒹𝒪𝓃𝒯𝒽𝑒𝐹𝓁𝓎"
# Generate cursive-like text and add border
output=$(toilet -f term -F border "$text")

# Calculate the position to center the text
padding=$((($(tput cols) - $(echo "$output" | wc -L)) / 2))

# Print the padded output
echo "$output" | awk -v pad="$padding" '{printf "%*s%s\n", pad, "", $0}' | lolcat

# Build rule
filename="$1"
flags="$2"
print_center Output

n=$(tput cols)
for ((i = 1; i <= n; i++)); do
	printf "-"
done

if [[ "$filename" == *.c ]]; then
	filename_without_extension="${filename%.c}"
	clang $filename $flags -o $filename_without_extension
	./$filename_without_extension
elif [[ "$filename" == *.cpp ]]; then
	filename_without_extension="${filename%.cpp}"
	clang++ $filename -o $filename_without_extension
	./$filename_without_extension
elif [[ "$filename" == *.py ]]; then
	python $filename
elif [[ "$filename" == *.sh ]]; then
	chmod +x $filename
	./$filename
elif [[ "$filename" == *.java ]]; then
	javac $filename
	filename_without_extension="${filename%.java}"
	java $filename_without_extension
elif [[ "$filename" == *.cs ]]; then
	mcs $filename
	filename_without_extension="${filename%.cs}"
	filename_with_exe_extension="${filename_without_extension}.exe"
	chmod +x $filename_with_exe_extension
	./$filename_with_exe_extension
else
	echo "Unknown file type or no file extension." | lolcat
fi

for ((i = 1; i <= n; i++)); do
	printf "-"
done

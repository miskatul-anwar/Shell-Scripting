#!/bin/bash

# Check if filename argument is provided
if [ $# -ne 1 ]; then
	echo "Usage: $0 <filename> 🤭" | lolcat
	exit 1
fi

filename="$1"

# Check if input.txt exists
if [ ! -f "input.txt" ]; then
	touch input.txt
fi

# Check if output.txt exists
if [ ! -f "output.txt" ]; then
	touch output.txt
fi

filename_without_extension="${filename%.java}"

# Compile Java file
javac "$filename"

# Execute the compiled file with output redirection and output overwriting
java "$filename_without_extension" <input.txt >output.txt

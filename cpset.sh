#!/bin/bash

# Check if filename argument is provided
if [ $# -ne 1 ]; then
	echo "Usage: $0 <filename>"
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

filename_without_extension="${filename%.cpp}"

# Compile C++ file
clang++ "$filename" -o "$filename_without_extension"

# Execute the compiled file with input redirection and output overwriting
./"$filename_without_extension" <input.txt >output.txt

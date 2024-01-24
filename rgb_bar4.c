#!/bin/bash

# RGB bar colors (change as needed)
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'

# Reset text color
RESET='\033[0m'

# Get terminal width
TERMINAL_WIDTH=$(tput cols)

# Function to display RGB bar filling the terminal width
display_rgb_bar() {
    local color=$1
    local bar_width=$2

    local scaled_width=$((TERMINAL_WIDTH * bar_width))
    local num_chars=$(awk -v sw="$scaled_width" 'BEGIN { printf "%.0f", sw/2 }')

    for ((i = 0; i < num_chars; i++)); do
        echo -en "${color}██${RESET}"
    done
    echo
}

# Display RGB bars
echo "Red:"
display_rgb_bar $RED 1

echo "Green:"
display_rgb_bar $GREEN 1
echo "Blue:"
display_rgb_bar $BLUE 0.

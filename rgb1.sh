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

    local num_chars=$((TERMINAL_WIDTH * bar_width / 4)) # Adjust the divisor for different thickness

    for ((i = 0; i < num_chars; i++)); do
        echo -en "${color}█${RESET}"  # Use a thinner block character
    done
    echo
}

# Display RGB bars
echo "Red:"
display_rgb_bar $RED 3  # Adjust the bar width (currently set to 3 for thinner bars)

echo "Green:"
display_rgb_bar $GREEN 3  # Adjust the bar width (currently set to 3 for thinner bars)

echo "Blue:"
display_rgb_bar $BLUE 3  # Adjust the bar width (currently set to 3 for thinner bars)


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

    for ((i = 0; i < TERMINAL_WIDTH; i+=bar_width)); do
        echo -en "${color}$(printf ' %.0s' $(seq $bar_width))${RESET}"
    done
    echo
}

# Display RGB bars
echo "Red:"
display_rgb_bar $RED 2  # Adjust the bar width (currently set to 2)

echo "Green:"
display_rgb_bar $GREEN 2  # Adjust the bar width (currently set to 2)

echo "Blue:"
display_rgb_bar $BLUE 2  # Adjust the bar width (currently set to 2)


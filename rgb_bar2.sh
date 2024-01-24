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

    for ((i = 0; i < TERMINAL_WIDTH / 2; i++)); do
        echo -en "${color}██${RESET}"
    done
    echo
}

# Display RGB bars
echo "Red:"
display_rgb_bar $RED

echo "Green:"
display_rgb_bar $GREEN

echo "Blue:"
display_rgb_bar $BLUE


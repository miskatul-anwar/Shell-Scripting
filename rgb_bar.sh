#!/bin/bash

# RGB bar colors (change as needed)
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'

# Reset text color
RESET='\033[0m'

# Function to display RGB bar
display_rgb_bar() {
    local length=$1
    local color=$2

    for ((i = 0; i < length; i++)); do
        echo -en "${color}██${RESET}"
    done
    echo
}

# Display RGB bars
echo "Red:"
display_rgb_bar 20 $RED

echo "Green:"
display_rgb_bar 20 $GREEN

echo "Blue:"
display_rgb_bar 20 $BLUE


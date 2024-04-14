#!/bin/bash

# Define the command to execute after inactivity
command_to_execute= cmatrix

# Function to execute the command
execute_command() {
	echo "Terminal inactive. Executing command: $command_to_execute"
	$command_to_execute
}

# Main loop
while true; do
	# Get the time of last terminal activity
	last_activity=$(date -r /dev/stdin +%s)

	# Get the current time
	current_time=$(date +%s)

	# Calculate the time difference
	time_diff=$((current_time - last_activity))

	# Check if the terminal is inactive for 30 seconds
	if [ "$time_diff" -ge 10 ]; then
		execute_command
	fi

	# Wait for a short duration before checking again
	sleep 5
done

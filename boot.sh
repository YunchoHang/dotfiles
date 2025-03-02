#!/bin/bash

# Array of hacker-style welcome messages
messages=(
    "Initializing system... Welcome."
    "System boot complete. Ready to hack."
    "Access granted. Welcome back."
    "System online. All systems go."
    "System activated. Let's get started."
)
sleep 2

# Get a random index from the array
random_index=$((RANDOM % ${#messages[@]}))

# Display the random welcome message in a hacker style
echo -e "\n"
echo -e "\033[1;32m${messages[$random_index]}\033[0m"
sleep 2
echo -e "\n"
sleep 2
# Display system information using neofetch with a slight delay
echo -e "\033[1;34mGathering system data... please stand by.\033[0m"
echo -e "\n"
sleep 3
neofetch --delay 3


# Add a subtle motivational message without the fluff
echo -e "\n\033[1;33mReady to dive deep. Let’s break boundaries.\033[0m"
echo -e "\n"

# Execute zsh for an interactive shell
exec zsh


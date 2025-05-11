#!/bin/bash

# Define the Kitty configuration folder for macOS and Linux
if [[ "$OSTYPE" == "darwin"* ]]; then
    KITTY_CONFIG_DIR="$HOME/.config/kitty"
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    KITTY_CONFIG_DIR="$HOME/.config/kitty"
else
    echo "Unsupported OS: $OSTYPE"
    exit 1
fi

# Create the Kitty configuration folder if it doesn't exist
if [ ! -d "$KITTY_CONFIG_DIR" ]; then
    echo "Creating Kitty configuration directory at $KITTY_CONFIG_DIR"
    mkdir -p "$KITTY_CONFIG_DIR"
fi

# Move .conf files and photos to the Kitty configuration folder
echo "Moving .conf files and photos to $KITTY_CONFIG_DIR"
mv *.conf "$KITTY_CONFIG_DIR" 2>/dev/null
mv *.jpg *.png "$KITTY_CONFIG_DIR" 2>/dev/null

# Check if the operation was successful
if [ $? -eq 0 ]; then
    echo "Files successfully moved to $KITTY_CONFIG_DIR"
else
    echo "No files to move or an error occurred."
fi
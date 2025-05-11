# My Kitty Terminal Config

# Kitty Configuration Installer

This script automates the process of setting up the configuration files and images for the [Kitty terminal emulator](https://sw.kovidgoyal.net/kitty/). It works on both macOS and Linux systems by moving `.conf` files and image files (`.jpg`, `.png`) from the current directory to the appropriate Kitty configuration folder.

## Features

- Detects the operating system (macOS or Linux).
- Ensures the Kitty configuration folder exists.
- Moves `.conf` files and image files (`.jpg`, `.png`) to the Kitty configuration folder.
- Provides feedback on the success or failure of the operation.

## Prerequisites

- Ensure you have the Kitty terminal emulator installed.
- Place all your `.conf` files and image files (`.jpg`, `.png`) in the same directory as this script.

## Installation

1. Clone or download this repository to your local machine.
2. Navigate to the directory containing the `install.sh` script.

## Usage

1. Make the script executable:

   ```bash
   chmod +x install.sh
   ```

2. Run the script:

   ```bash
   ./install.sh
   ```

3. The script will:
   - Detect your operating system.
   - Create the Kitty configuration folder if it doesn't already exist:
     - macOS: `~/.config/kitty`
     - Linux: `~/.config/kitty`
   - Move `.conf` files and image files (`.jpg`, `.png`) to the Kitty configuration folder.

## Output

- If successful:

  ```
  Files successfully moved to /path/to/kitty/config
  ```

- If no files are found or an error occurs:
  ```
  No files to move or an error occurred.
  ```

## Notes

- The script only moves files from the current directory. Ensure your `.conf` files and images are in the same directory as the script before running it.
- If the Kitty configuration folder already exists, the script will not overwrite existing files.

## Troubleshooting

- If you encounter a "Permission denied" error, ensure the script has executable permissions:
  ```bash
  chmod +x install.sh
  ```
- If the script doesn't work as expected, verify that your operating system is either macOS or Linux.

## License

This script is provided under the MIT License. Feel free to modify and use it as needed.

#!/bin/bash
SCRIPT_DIR=$(dirname "$(readlink -f "$0")")
# Define the target and source directories
TARGET_FILE="$HOME/.config/starship.toml"
SOURCE_DIR="$SCRIPT_DIR/starship/starship.toml"

# Remove the target file if it exists
rm -rf "$TARGET_FILE"

# Create a symlink from the local file
ln -s "$SOURCE_DIR" "$TARGET_FILE"
echo "Symlink created from $SOURCE_DIR to $TARGET_FILE"

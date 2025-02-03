#!/bin/bash
SCRIPT_DIR=$(dirname "$(readlink -f "$0")")
# Define the target and source directories
TARGET_DIR="$HOME/.config/yazi"
SOURCE_DIR="$SCRIPT_DIR/yazi"

# Check if the target directory exists
if [ -d "$TARGET_DIR" ]; then
  # Make a backup
  BACKUP_DIR="$TARGET_DIR.backup.$(date +%Y%m%d%H%M%S)"
  mv "$TARGET_DIR" "$BACKUP_DIR"
  echo "Backup of existing yazi config created at $BACKUP_DIR"
fi

# Remove the target directory if it exists
rm -rf "$TARGET_DIR"

# Create a symlink from the local directory
ln -s "$SOURCE_DIR" "$TARGET_DIR"
echo "Symlink created from $SOURCE_DIR to $TARGET_DIR"

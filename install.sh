#!/bin/bash

# Path to install the script
TARGET_DIR="$HOME/bin"
TARGET_FILE="$TARGET_DIR/cf"

# Create bin directory if it doesn't exist
mkdir -p "$TARGET_DIR"

# Copy cf script
cp cf "$TARGET_FILE"
chmod +x "$TARGET_FILE"

# Add ~/bin to PATH if not already
SHELL_RC="$HOME/.bashrc"
[[ $SHELL == *"zsh" ]] && SHELL_RC="$HOME/.zshrc"

if ! echo "$PATH" | grep -q "$HOME/bin"; then
  echo 'export PATH="$HOME/bin:$PATH"' >> "$SHELL_RC"
  echo "✅ Added ~/bin to PATH in $SHELL_RC (you may need to restart your terminal)"
fi

echo "✅ cf installed to $TARGET_FILE"
echo "👉 You can now run it with: cf feature-name"

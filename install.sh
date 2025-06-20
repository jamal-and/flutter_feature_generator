#!/bin/bash

SCRIPT_NAME="flutter_feature_generator"
ALIAS_NAME="cf"
TARGET_DIR="$HOME/bin"
TARGET_PATH="$TARGET_DIR/$SCRIPT_NAME"

# Ensure bin dir exists
mkdir -p "$TARGET_DIR"

# Copy script
cp "$SCRIPT_NAME" "$TARGET_PATH"
chmod +x "$TARGET_PATH"

# Determine shell rc file
SHELL_RC="$HOME/.bashrc"
[[ $SHELL == *"zsh" ]] && SHELL_RC="$HOME/.zshrc"

# Add ~/bin to PATH if missing
if ! echo "$PATH" | grep -q "$HOME/bin"; then
  echo 'export PATH="$HOME/bin:$PATH"' >> "$SHELL_RC"
  echo "✅ Added ~/bin to PATH in $SHELL_RC"
fi

# Add alias to shell config
if ! grep -q "alias $ALIAS_NAME=" "$SHELL_RC"; then
  echo "alias $ALIAS_NAME='$SCRIPT_NAME'" >> "$SHELL_RC"
  echo "✅ Added alias: cf → $SCRIPT_NAME in $SHELL_RC"
else
  echo "ℹ️ Alias '$ALIAS_NAME' already exists in $SHELL_RC"
fi

echo "✅ Installed $SCRIPT_NAME to $TARGET_PATH"
echo "🔁 Restart your terminal or run: source $SHELL_RC"
echo "👉 Use it like: cf nutrition_log"

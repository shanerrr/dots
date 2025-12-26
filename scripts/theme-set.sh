#!/bin/bash

if [[ -z $1 && $1 != "CNCLD" ]]; then
  echo "Usage: theme-set <theme-name>"
  exit 1
fi

THEMES_DIR="$HOME/.config/preferences/themes/"
CURRENT_THEME_DIR="$HOME/.config/preferences/current/theme"

THEME_NAME=$(echo "$1" | sed -E 's/<[^>]+>//g' | tr '[:upper:]' '[:lower:]' | tr ' ' '-')
THEME_PATH="$THEMES_DIR/$THEME_NAME"

# Check if the theme entered exists
if [[ ! -d "$THEME_PATH" ]]; then
  echo "Theme '$THEME_NAME' does not exist in $THEMES_DIR"
  exit 1
fi

# Always remove destination before symlinking
rm -rf "$CURRENT_THEME_DIR"
ln -nsf "$THEME_PATH" "$CURRENT_THEME_DIR"

# Restart components to apply new theme
bash restart-app.sh waybar
# hyprctl reload
pkill -SIGUSR2 btop

# restart terminal
killall -SIGUSR1 kitty

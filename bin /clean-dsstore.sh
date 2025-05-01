#!/bin/bash

# Set to your dotfiles directory
DOTFILES_DIR="$HOME/.dotfiles"

echo "🔍 Searching for .DS_Store files in $DOTFILES_DIR..."

# Delete all .DS_Store files recursively
find "$DOTFILES_DIR" -name ".DS_Store" -type f -print -delete

echo "✅ All .DS_Store files removed from $DOTFILES_DIR"

#!/bin/bash

# List of casks to check
casks=(
    "google-chrome"
    "google-backup-and-sync"
    "sublime-text"
    "iterm2"
    "sourcetree"
    "android-file-transfer"
    "jetbrains-toolbox"
    "docker"
    "nvalt"
    "simplenote"
    "postman"
    "skitch"
    "charles"
    "dash2"
    "alfred"
    "visual-studio-code"
    "anki"
    "slack"
    "notion"
    "skype"
    "zoom"
    "figma"
    "spotify"
)

# List of formulae to check
formulae=(
    "cloc"
    "openjdk"
    "postgres"
    "youtube-dl"
    "node"
    # GitHub CLI (also have copilot api inside it)
    # example usage gh copilot explain "sudo apt-get"
    "gh"
)

# Check each cask
for cask in "${casks[@]}"; do
    if brew search --cask "$cask" | grep -q "^$cask\$"; then
        echo "$cask is available as a cask."
    else
        echo -e "\033[0;31m$cask is NOT available as a cask.\033[0m"
    fi
done

# Check each formula
for formula in "${formulae[@]}"; do
    if brew search "$formula" | grep -q "^$formula\$"; then
        echo "$formula is available as a formula."
    else
        echo -e "\033[0;31m$formula is NOT available as a formula.\033[0m"
    fi
done
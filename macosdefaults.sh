#!/bin/bash 
#for macos bash is in bin
##!/usr/bin/bash
# Reference — https://mths.be/macos
# TODO: Follow https://github.com/mathiasbynens/dotfiles/blob/master/.macos for more defaults and config
# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
#while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &



# set google dns server to wifi dns settings
# not working in agoda or corporate laptop, only run in personal laptop
# networksetup -setdnsservers Wi-Fi 8.8.8.8 8.8.4.4

# Always open everything in Finder's list view. This is important.
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# don't hide files
defaults write com.apple.Finder AppleShowAllFiles true

# Show the ~/Library folder.
chflags nohidden ~/Library
# Show the /Volumes folder
sudo chflags nohidden /Volumes

# Set the Finder prefs for showing a few different volumes on the Desktop.
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Set standby delay to 10 minutes (default is 1 hour)
# sudo pmset -a standbydelay 600

# Disable hibernation (speeds up entering sleep mode)
# sudo pmset -a hibernatemode 3

# sudo pmset -a hibernatemode 25 #(hard disk sleep) for personal laptops
sudo pmset -a hibernatemode 3 #(RAM sleep) for office laptops
sudo pmset standbydelay 600
sudo pmset disksleep 16 #to test the behaviour
#would not require password coming back from hibernation
sudo pmset standby 0

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Reveal IP address, hostname, OS version, etc. when clicking the clock
# in the login window
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName


# Terminal & iTerm 2                                                          #
###############################################################################

# Install the Solarized Dark theme for iTerm
open "init/Solarized Dark.itermcolors"

# Don’t display the annoying prompt when quitting iTerm
defaults write com.googlecode.iterm2 PromptOnQuit -bool false


# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10

# to turn off charger plugged in sound
#defaults write com.apple.PowerChime ChimeOnNoHardware -bool true;killall PowerChime
#to turn on 
#defaults write com.apple.PowerChime ChimeOnAllHardware -bool true; open /System/Library/CoreServices/PowerChime.app &


###############################################################################
# Kill affected applications                                                  #
###############################################################################

for app in "Activity Monitor" \
	"Address Book" \
	"Calendar" \
	"cfprefsd" \
	"Contacts" \
	"Dock" \
	"Finder" \
	"Google Chrome" \
	"Photos" \
	"Terminal"; do
	killall "${app}" &> /dev/null
done


# reference  : https://gist.github.com/llimllib/c4dd0a98a426022b0365d4c0a9090460

defaults write -g com.apple.trackpad.scaling -float 1.5
#manually set tap with one finger to click, not able to find accurate seetings key name.

defaults write com.apple.dock tilesize -int 41
defaults write com.apple.dock orientation -string "left"
# Set the magnification to true
defaults write com.apple.dock magnification -int 1

# Show volume in the menu bar
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.volume" -int 0

# Show Bluetooth in the menu bar
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.bluetooth" -int 0


# reboot systemUIServer and the dock to enable defaults to take effect
killall -KILL Dock
killall -KILL SystemUIServer

echo "Done. Note that some of these changes require a logout/restart to take effect."

# Remove the sleep image file to save disk space
#sudo rm /private/var/vm/sleepimage
# Create a zero-byte file instead…
#sudo touch /private/var/vm/sleepimage
# …and make sure it can’t be rewritten
#sudo chflags uchg /private/var/vm/sleepimage
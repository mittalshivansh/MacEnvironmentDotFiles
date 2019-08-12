#!/bin/sh
#setting environment to stop homebrew autoupdating each time when installing cask for this session only
export HOMEBREW_NO_AUTO_UPDATE=1

brew cask install java

brew cask install google-chrome

brew cask install google-backup-and-sync

brew cask install sublime

brew cask install iterm2

brew cask install sourcetree

brew cask install android-studio

brew cask install android-file-transfer

brew cask install pycharm-ce
brew cask install intellij-idea

brew cask install nvalt
#many of my notes are on simplenote cloud.
brew cask install simplenote
brew cask install postman

brew cask install vlc

#image annotating tool
brew cask install skitch

#network proxy tool to record and monitor network activites
brew cask install charles

#for cleaning app caches and all junks of app, its a paid app
#brew cask install cleanmymac

#I have license for dash 2 of abhishek sengar so download dash2.
#brew cask install dash
brew cask install dash2
brew cask install alfred
brew cask install visual-studio-code

#for memoizing the knowledge, its the best research technique that should be incooperated in our learning process.
brew cask install anki

#join active dev community channels on slack for updates.
brew cask install slack

brew cask install skype

#better window management with mutple screens using keyboard shortcuts
#brew cask install spectacle

# disable system mac os syterm integrity protection to run this command
# sudo xattr -d -r com.apple.quarantine /Applications/*


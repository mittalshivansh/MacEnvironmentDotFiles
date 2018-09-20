#!/bin/sh
#setting environmentto stop homebrew autoupdating each time when installing cask for this session only
export HOMEBREW_NO_AUTO_UPDATE=1

brew cask install java8

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
brew cask install simplenote
brew cask install postman

brew cask install vlc

#image annotating tool
brew cask install skitch

#network proxy tool to record and monitor network activites
brew cask install charles

#for cleaning app caches and all junks of app, its a paid app
#brew cask install cleanmymac

brew cask install dash
brew cask install alfred
brew cask install visual-studio-code

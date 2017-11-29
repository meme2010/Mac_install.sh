#!/usr/bin/env bash

echo Install Homebrew, Postgres, wget and cask
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/science
brew install wget
brew install git
brew install node
brew install ruby
brew install python
brew install thefuck
brew install mysql
brew install composer
brew install tree
brew install sourcekitten

brew tap phinze/cask
brew install cask

#To have launchd start emacs now and restart at login:
#   brew services start emacs
#   Or, if you don't want/need a background service you can just run:
#   emacs
brew install brew-cask-completion
#brew cask search
#brew cask uninstall app

# Core Functionality
echo Install Core Apps

brew cask install --appdir="/Applications" little-snitch
brew cask install --appdir="/Applications" sequel-pro
brew cask install --appdir="/Applications" java
brew cask install --appdir="/Applications" docker

# Development
echo Install Dev Apps
brew cask install --appdir="/Applications" phpstorm
brew cask install --appdir="/Applications" atom
brew cask install --appdir="/Applications" github
brew cask install --appdir="/Applications" appcode

# Google Slavery
echo Install Google Apps | Chrome not included cause of 1Password Plugin
brew cask install --appdir="/Applications" chrome-devtools
brew cask install --appdir="/Applications" google-web-designer
brew cask install --appdir="/Applications" google-chrome

# cleanup
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*

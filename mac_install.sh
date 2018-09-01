#!/usr/bin/env bash

echo Install Homebrew, Postgres, wget and cask
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/science
brew install wget
brew install git
brew install node
brew install ruby
brew install thefuck
brew install mysql
brew install composer
brew install tree
brew install sourcekitten
brew install swiftlint
brew install swiftformat
brew install libswiften
brew install libswiftnav
brew install swiftgen
brew install swift
brew install cocoapods

# Python
brew install python
# Python helpful modules
pip install virtualenv
pip install virtualenvwrapper
pip install numpy
brew install gfortran
pip install scipy
brew install freetype
pip install matplotlib
pip install ipython
#QT for Python
brew install pyqt
# After installing pyqt, Homebrew will prompt you to add the following to your .bash_profile:
# export PYTHONPATH=/usr/local/lib/python:$PYTHONPATH

# dependences for PyQT
brew install zmq
pip install pyzmq
pip install pygments

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

brew cask install little-snitch
brew cask install sequel-pro
brew cask install java
brew cask install docker
brew cask install java8

# Development
echo Install Dev Apps
brew cask install phpstorm
brew cask install atom
brew cask install github
brew cask install appcode
brew cask install swift
brew cask install cocoapods-app
brew cask install android-studio
brew cask install virtualbox
brew cask install firefox

# Google Slavery
echo Install Google Apps | Chrome not included cause of 1Password Plugin
brew cask install chrome-devtools
brew cask install google-web-designer
brew cask install google-chrome

# cleanup
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*

#!/usr/bin/env bash

DIRS=(
  code
  videos
)

BREW_PKGS=(
  tldr
  youtube-dl
)

mkdir $DIRS
touch $HOME/.profile
# xcode cli tools
xcode-select --install
# homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install $BREW_PKGS
ssh-keygen

# in case installers have added lines to .bash_profile
# cat $HOME/.bash_profile >> $HOME/.profile
# echo "source \$HOME/.profile" > $HOME/.bash_profile
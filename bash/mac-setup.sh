#!/usr/bin/env bash

PROFILE="$HOME/.profile"

DIRS=(
  code
  videos
)

BREW_PKGS=(
  tldr
  youtube-dl
  lbzip2
)

mkdir ${DIRS[@]}
touch $PROFILE
ssh-keygen
# xcode cli tools
xcode-select --install
# homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install ${BREW_PKGS[@]}

# in case installers have added lines to .bash_profile
# cat $HOME/.bash_profile >> $HOME/.profile
# echo "source \$HOME/.profile" > $HOME/.bash_profile
#!/usr/bin/env bash

# see https://github.com/nvm-sh/nvm#install--update-script
# using master tree instead of version tag

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
source $HOME/.profile
# node
nvm install --lts
# yarn
brew install yarn
#!/usr/bin/env bash

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
source $PROFILE
# node
nvm install --lts
# yarn
brew install yarn
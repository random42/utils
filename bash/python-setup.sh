#!/usr/bin/env bash

VERSION="3.8.1"

# if Ubuntu you may have to run
# sudo apt-get install build-essential libsqlite3-dev sqlite3 bzip2 libbz2-dev zlib1g-dev libssl-dev openssl libgdbm-dev libgdbm-compat-dev liblzma-dev libreadline-dev libncursesw5-dev libffi-dev uuid-dev
curl https://pyenv.run | bash
echo '
export PATH="~/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
' >> $HOME/.profile
source $HOME/.profile
pyenv install $VERSION
pyenv global $VERSION
pip install --upgrade pip
pyenv virtualenv $VERSION tools
pyenv activate tools
pip install poetry
pyenv deactivate
pyenv global $VERSION tools
python --version
poetry --version


# to uninstall
# rm -rf ~/.pyenv
# and remove lines from profile

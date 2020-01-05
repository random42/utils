VERSION="3.8.1"

curl https://pyenv.run | bash
echo 'export PATH="~/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc
sudo apt-get install build-essential libsqlite3-dev sqlite3 bzip2 libbz2-dev zlib1g-dev libssl-dev openssl libgdbm-dev libgdbm-compat-dev liblzma-dev libreadline-dev libncursesw5-dev libffi-dev uuid-dev
pyenv install $VERSION
pyenv global $VERSION
pyenv virtualenv $VERSION tools
pyenv activate tools
pip install poetry
pyenv deactivate
pyenv global $VERSION tools
python --version
poetry --version

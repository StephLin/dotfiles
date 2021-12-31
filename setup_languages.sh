#!/usr/bin/env bash
# Python
sudo apt install -y python python3 python-dev python3-dev python-pip python3-pip 

# GDB (GEF)
sudo apt install -y gdb
wget -O ~/.gdbinit-gef.py -q http://gef.blah.cat/py
echo source ~/.gdbinit-gef.py >> $HOME/.gdbinit

# Nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ./nvmrc
nvm install node

# Golang
wget https://go.dev/dl/go1.17.5.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.17.5.linux-amd64.tar.gz
rm go1.17.5.linux-amd64.tar.gz


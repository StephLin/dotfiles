#!/usr/bin/env bash
sudo apt install -y git tig
cp git/gitconfig $HOME/.gitconfig

source ./nvmrc
npm install -g git-stats

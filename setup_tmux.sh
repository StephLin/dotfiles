#!/usr/bin/env bash
sudo apt install -y tmux

git clone https://github.com/gpakosz/.tmux.git ~/.tmux
ln -s -f $HOME/.tmux/.tmux.conf $HOME/.tmux.conf
cp "./tmux/tmux.conf.local" "$HOME/.tmux.conf.local"

# Smug
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

mkdir -p $HOME/go/src/github.com/ivaaaan/
git clone https://github.com/ivaaaan/smug.git $HOME/go/src/github.com/ivaaaan/smug
pushd $HOME/go/src/github.com/ivaaaan/smug
go install
popd

mkdir -p $HOME/.config/smug
cp tmux/project.yml $HOME/.config/smug

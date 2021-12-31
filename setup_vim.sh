#!/usr/bin/env bash

sudo apt remove -y vim
sudo apt-add-repository -y ppa:jonathonf/vim
sudo apt update
sudo apt install -y vim

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.fzf
$HOME/.fzf/install --all
source $HOME/.bashrc

# Python language server, linter, and formatter
python3 -m pip install python-language-server yapf flake8

cp ./vim/vimrc $HOME/.vimrc
curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p $HOME/.vim/colors
touch $HOME/.vim/colors/space-vim-dark.vim

vim +PlugInstall +qall

rm $HOME/.vim/colors/space-vim-dark.vim
ln -s $HOME/.vim/plugged/space-vim-dark/colors/space-vim-dark.vim $HOME/.vim/colors/space-vim-dark.vim

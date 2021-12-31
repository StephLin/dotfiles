#!/usr/bin/env bash

if [ -d "$HOME/.oh-my-zsh" ]; then
    echo "Skip zsh setup due to existence of ~/.oh-my-zsh"
    exit 0
fi

sudo apt install -y zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cp zsh/zshrc $HOME/.zshrc

PLUGIN_ROOT="$HOME/.oh-my-zsh/custom/plugins"
mkdir -p $PLUGIN_ROOT

git clone https://github.com/zsh-users/zsh-autosuggestions $PLUGIN_ROOT/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions $PLUGIN_ROOT/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting $PLUGIN_ROOT/zsh-syntax-highlighting
git clone https://github.com/peterhurford/up.zsh $PLUGIN_ROOT/up
mkdir $PLUGIN_ROOT/smug && cp ./zsh/_smug $PLUGIN_ROOT/smug

# p10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
cp ./zsh/p10k.zsh $HOME/.p10k.zsh

mkdir -p $HOME/.local/share/fonts/NerdFont
pushd $HOME/.local/share/fonts/NerdFont
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/UbuntuMono.zip
unzip UbuntuMono.zip
rm UbuntuMono.zip
popd

echo "Changing default shell to zsh ..."
chsh -s $(which zsh)

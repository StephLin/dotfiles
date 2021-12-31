# [StephLin](https://github.com/stephlin)'s dotfiles

A script to setup environment for Ubuntu 18.04.

```bash
git clone https://github.com/stephlin/dotfiles
cd dotfiles && sh ./setup.sh
```

## Standard Packages

### Tools

- wget
- curl
- silversearcher-ag (cli: `ag`)
- fzf
- gdb (with gef)

### Languages

- gcc-7, cmake (>3.20)
- python{2.7, 3.6}-{pip, dev}
- node 16.x, npm
- golang 17.5

### Git

- git
- tig
- git-stats (managed by npm)

### Vim

- vim (>= 8), with several plugins

### Shell

- zsh
- oh-my-zsh, with several plugins
- powerlevel10k

### Tmux

- .tmux (oh my tmux)
- smug (powered by golang)

## Post-Scripts

### Docker-CE and Docker Compose

```bash
sh -e ./install_docker.sh
```

### ROS (Melodic, for Ubuntu 18.04)

```bash
sh -e ./install_ros_melodic.sh
```

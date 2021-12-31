#!/usr/bin/env bash
# Basic components
sudo apt update
sudo apt install -y wget curl build-essential silversearcher-ag zlib1g-dev unzip p7zip-full git

# Latest CMake
sudo apt install -y software-properties-common lsb-release
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | sudo tee /etc/apt/trusted.gpg.d/kitware.gpg >/dev/null
sudo apt-add-repository "deb https://apt.kitware.com/ubuntu/ $(lsb_release -cs) main"
sudo apt update
sudo apt install -y cmake

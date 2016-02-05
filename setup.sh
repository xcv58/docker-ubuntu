#!/usr/bin/env bash

# install toolchanin
sudo apt-get -qqy install software-properties-common
sudo add-apt-repository -y ppa:pi-rho/dev
sudo apt-get -qq update
sudo apt-get -qqy install git gcc silversearcher-ag vim tmux zsh curl wget make tree golang

sudo locale-gen en_US.UTF-8

# setup dev tools
DEV_TOOLS=~/.devtools
mkdir -p ${DEV_TOOLS}

# setup zsh
cd ${DEV_TOOLS}
zsh
git clone --recursive https://github.com/xcv58/prezto.git
cd prezto
sudo zsh install.zsh
sudo chsh -s /bin/zsh

# setup tmux
cd ${DEV_TOOLS}
git clone https://github.com/xcv58/tmux_conf.git tmux_conf
cd tmux_conf
sudo zsh install.zsh

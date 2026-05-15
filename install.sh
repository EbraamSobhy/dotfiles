#!/bin/bash

sudo apt update
sudo apt install git stow

git clone https://github.com/EbraamSobhy/dotfiles.git ~/dotfiles
cd ~/dotfiles

stow bash
stow git
stow nvim

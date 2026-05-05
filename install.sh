#!/bin/bash

# Create needed dirs
mkdir -p ~/.config

# Symlinks
ln -sf ~/dotfiles/bash/.bashrc ~/.bashrc
ln -sf ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/i3/config ~/.config/i3/config

echo "Dotfiles installed!"

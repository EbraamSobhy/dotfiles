#!/bin/bash

# Create needed dirs
mkdir -p ~/.config/i3 ~/.config/polybar ~/.config/rofi ~/.config/dunst

# Symlinks
ln -sf ~/dotfiles/i3/config ~/.config/i3/config
ln -sf ~/dotfiles/polybar/config.ini ~/.config/polybar/config.ini
ln -sf ~/dotfiles/rofi/config.rasi ~/.config/rofi/config.rasi
ln -sf ~/dotfiles/dunst/dunstrc ~/.config/dunst/dunstrc
ln -sf ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/zsh/.zshrc ~/.zshrc

echo "Dotfiles installed!"

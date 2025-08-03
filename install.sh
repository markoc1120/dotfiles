#!/bin/bash

########
# nvim #
########

# maybe we ain't need this
# sudo pacman -S --noconfirm --needed gcc make git ripgrep fd unzip neovim
ln -sf "$HOME/src/dotfiles/nvim/" "$HOME/.config/"

########
# X11  #
########

rm -rf "$HOME/.config/X11"
ln -s "$HOME/src/dotfiles/X11" "$HOME/.config"

######
# i3 #
######

rm -rf "$HOME/.config/i3"
ln -s "$HOME/src/dotfiles/i3" "$HOME/.config"

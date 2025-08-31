#!/bin/bash

########
# nvim #
########

# maybe we ain't need this
# sudo pacman -S --noconfirm --needed gcc make git ripgrep fd unzip neovim
ln -sf "$DOTFILES/nvim/" "$XDG_CONFIG_HOME/"

###########
# ghostty #
###########

rm -rf "$XDG_CONFIG_HOME/ghostty"
ln -sf "$DOTFILES/ghostty/" "$XDG_CONFIG_HOME/"

########
# sway #
########

ln -sf "$DOTFILES/sway/" "$XDG_CONFIG_HOME/"

############
# swaylock #
############

ln -sf "$DOTFILES/swaylock/" "$XDG_CONFIG_HOME/"

##########
# waybar #
##########

ln -sf "$DOTFILES/waybar/" "$XDG_CONFIG_HOME/"

########
# rofi #
########

ln -sf "$DOTFILES/rofi/" "$XDG_CONFIG_HOME/"

#######
# zsh #
#######

mkdir -p "$XDG_CONFIG_HOME/zsh"
ln -sf "$DOTFILES/zsh/.zshenv" "$HOME"
ln -sf "$DOTFILES/zsh/.zshrc" "$XDG_CONFIG_HOME/zsh"
ln -sf "$DOTFILES/zsh/.zprofile" "$XDG_CONFIG_HOME/zsh/.zprofile"
ln -sf "$DOTFILES/zsh/aliases" "$XDG_CONFIG_HOME/zsh/aliases"
rm -rf "$XDG_CONFIG_HOME/zsh/external"
ln -sf "$DOTFILES/zsh/external" "$XDG_CONFIG_HOME/zsh"
ln -sf "$DOTFILES/zsh/scripts.sh" "$XDG_CONFIG_HOME/zsh"

#########
# Fonts #
#########

mkdir -p "$XDG_DATA_HOME"
cp -rf "$DOTFILES/fonts" "$XDG_DATA_HOME"

#################
# Notifications #
#################

ln -sf "$DOTFILES/mako/" "$XDG_CONFIG_HOME/"

#######
# Git #
#######

mkdir -p "$XDG_CONFIG_HOME/git"
ln -sf "$DOTFILES/git/config" "$XDG_CONFIG_HOME/git/config"

########
# tmux #
########

mkdir -p "$XDG_CONFIG_HOME/tmux"
ln -sf "$DOTFILES/tmux/tmux.conf" "$XDG_CONFIG_HOME/tmux/tmux.conf"

[ ! -d "$XDG_CONFIG_HOME/tmux/plugins/tpm" ] \
&& git clone https://github.com/tmux-plugins/tpm \
"$XDG_CONFIG_HOME/tmux/plugins/tpm"

mkdir -p "$XDG_CONFIG_HOME/tmuxp"
ln -sf "$DOTFILES/tmuxp"/* "$XDG_CONFIG_HOME/tmuxp/"
ln -sf "$DOTFILES/tmuxp_local"/* "$XDG_CONFIG_HOME/tmuxp/"

#############
# gammastep #
#############

mkdir -p "$XDG_CONFIG_HOME/gammastep"
ln -sf "$DOTFILES/gammastep/config" "$XDG_CONFIG_HOME/gammastep/config"

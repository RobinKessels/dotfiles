#!/bin/sh

ln -sfn ~/dotfiles/config/nvim/ ~/.config/nvim
ln -sfn ~/dotfiles/config/aerospace/aerospace.toml ~/.config/aerospace/aerospace.toml
ln -sfn ~/dotfiles/config/ghostty/config ~/.config/ghostty/config
ln -sfn ~/dotfiles/config/zsh/zsh ~/.config/zsh/.zshrc

# Mac specific settings
# Set key press speed
defaults write NSGlobalDomain KeyRepeat -int 0
defaults write NSGlobalDomain InitialKeyRepeat -int 1

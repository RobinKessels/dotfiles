#!/bin/sh

# Create directories if not exist
mkdir -p ~/.config/zshrc/

# Move existing config files to .local if they exist
[ -e ~/.zshrc ] && mv ~/.zshrc ~/.config/zshrc/.zshrc.local 2>/dev/null
[ -e ~/.config/nvim ] && mv ~/.config/nvim ~/.config/nvim.local 2>/dev/null
[ -e ~/.config/aerospace/aerospace.toml ] && mv ~/.config/aerospace/aerospace.toml ~/.config/aerospace/aerospace.toml.local 2>/dev/null
[ -e ~/.config/ghostty/config ] && mv ~/.config/ghostty/config ~/.config/ghostty/config.local 2>/dev/null
[ -e ~/.config/k9s/skins ] && mv ~/.config/k9s/skins ~/.config/k9s/skins.local 2>/dev/null

# Create minimal zshrc file that sources the one in the config directory
cat <<EOL >~/.zshrc
source "$HOME/.config/zsh/.zshrc"
EOL

# Create missing directories for config files
mkdir ~/.config/aerospace 2>/dev/null
mkdir ~/.config/ghostty 2>/dev/null
mkdir ~/.config/k9s 2>/dev/null

# Set symlinks for config files
ln -sfn ~/dotfiles/config/nvim/ ~/.config/nvim
ln -sfn ~/dotfiles/config/aerospace/aerospace.toml ~/.config/aerospace/aerospace.toml
ln -sfn ~/dotfiles/config/ghostty/config ~/.config/ghostty/config
ln -sfn ~/dotfiles/config/zsh/zsh ~/.config/zsh/.zshrc
ln -sfn ~/dotfiles/config/k9s/skins ~/.config/k9s/skins

# Mac specific settings
# Set key press speed
defaults write NSGlobalDomain KeyRepeat -int 0
defaults write NSGlobalDomain InitialKeyRepeat -int 1

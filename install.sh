#!/bin/bash

# Packages
echo "Installing packages:"

echo "Installing Git"
sudo pacman -S git

echo "Installing Firefox"
sudo pacman -S firefox

echo "Installing NeoVim"
sudo pacman -S neovim

# NeoVim settings
echo "Setting up your Neovim plugins"

mkdir ~/.config/nvim
cd /tmp && git clone https://github.com/JuniorJairo/neovim-setup.git
cd /tmp/neovim-setup && cp init.vim ~/.config/nvim

# Referencing "nvim" as "vim".;
echo "alias vim='nvim'" >> ~/.bashrc

echo "Done! (:"

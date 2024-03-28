#!/bin/zsh
source ~/.zshrc;

brew bundle --no-lock --verbose --file=./Brewfile;

ln -fns ~/dotfiles/.zshrc ~/.zshrc;
ln -fns ~/dotfiles/config/starship.toml ~/.config/starship.toml;
ln -fns ~/dotfiles/config/mise ~/.config/mise;
ln -fns ~/dotfiles/config/nvim ~/.config/nvim;
ln -fns ~/dotfiles/config/wezterm ~/.config/wezterm;

./setup-mac.sh;
#!/bin/zsh
brew bundle --no-lock --verbose --file=./Brewfile;

mise install;

ln -fns ~/dotfiles/.actrc ~/.actrc;
ln -fns ~/dotfiles/.aliases ~/.aliases;
ln -fns ~/dotfiles/.gitconfig ~/.gitconfig;
ln -fns ~/dotfiles/.ideavimrc ~/.ideavimrc;
ln -fns ~/dotfiles/.zshenv ~/.zshenv;
ln -fns ~/dotfiles/.zshrc ~/.zshrc;
ln -fns ~/dotfiles/config/starship.toml ~/.config/starship.toml;
ln -fns ~/dotfiles/config/gh/config.yml ~/.config/gh/config.yml;
ln -fns ~/dotfiles/config/karabiner/karabiner.json ~/.config/karabiner/karabiner.json;
ln -fns ~/dotfiles/config/mise ~/.config/;
ln -fns ~/dotfiles/config/nvim ~/.config/;
ln -fns ~/dotfiles/config/wezterm ~/.config/;

source ~/.zshrc;

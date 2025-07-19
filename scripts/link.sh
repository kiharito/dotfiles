#!/bin/zsh
ln -fns ~/dotfiles/.actrc ~/.actrc
ln -fns ~/dotfiles/.aliases ~/.aliases
ln -fns ~/dotfiles/.gitconfig ~/.gitconfig
ln -fns ~/dotfiles/.ideavimrc ~/.ideavimrc
ln -fns ~/dotfiles/.zprofile ~/.zprofile
ln -fns ~/dotfiles/.zshenv ~/.zshenv
ln -fns ~/dotfiles/.zshrc ~/.zshrc

mkdir -p ~/.claude
ln -fns ~/dotfiles/claude/CLAUDE.md ~/.claude/CLAUDE.md
ln -fns ~/dotfiles/claude/settings.json ~/.claude/settings.json

mkdir -p ~/.config
ln -fns ~/dotfiles/config/starship.toml ~/.config/starship.toml

mkdir -p ~/.config/gh
ln -fns ~/dotfiles/config/gh/config.yml ~/.config/gh/config.yml

ln -fns ~/dotfiles/config/ghostty ~/.config

mkdir -p ~/.config/git
ln -fns ~/dotfiles/config/git/ignore ~/.config/git/ignore

mkdir -p ~/.config/karabiner
ln -fns ~/dotfiles/config/karabiner/karabiner.json ~/.config/karabiner/karabiner.json

mkdir -p ~/.config/lazygit
ln -fns ~/dotfiles/config/lazygit/config.yml ~/.config/lazygit/config.yml

ln -fns ~/dotfiles/config/mise ~/.config

ln -fns ~/dotfiles/config/nvim ~/.config

ln -fns ~/dotfiles/config/zed/keymap.json ~/.config/zed/keymap.json
ln -fns ~/dotfiles/config/zed/settings.json ~/.config/zed/settings.json
mkdir -p ~/.config/zed/themes
ln -fns ~/dotfiles/config/zed/themes/tokyo-night.json ~/.config/zed/themes/tokyo-night.json

# Cursorの設定はVSCodeと揃える
ln -fns ~/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -fns ~/dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
ln -fns ~/dotfiles/vscode/settings.json ~/Library/Application\ Support/Cursor/User/settings.json

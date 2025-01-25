#!/bin/zsh
#
# dotfilesをcloneする前に実行が必要
#
# Xcode
xcode-select --install
# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# dotfiles
git clone https://github.com/kiharito/dotfiles.git
cd dotfiles/

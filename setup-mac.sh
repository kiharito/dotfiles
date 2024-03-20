#!/bin/zsh

# Finder上で隠しファイルも表示する
defaults write com.apple.finder AppleShowAllFiles -bool true

# キーボードを押しっぱなしにして連続入力可能にする
defaults write -g ApplePressAndHoldEnabled -bool false

# アプリを読み込みなおして設定を反映させる
killall Dock &>/dev/null
killall Finder &>/dev/null
killall SystemUIServer &>/dev/null

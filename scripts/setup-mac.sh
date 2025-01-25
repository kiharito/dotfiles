# ダークモード化
osascript -e 'tell app "System Events" to tell appearance preferences to set dark mode to true'
# キーボードを押しっぱなしにして連続入力可能にする
defaults write -g ApplePressAndHoldEnabled -bool false
# トラックパッドのカーソル移動を最速にする
defaults write -g com.apple.trackpad.scaling 3
# キーリピート速度を最速にする
defaults write -g KeyRepeat -int 2
# キーリピート認識速度を最速にする
defaults write -g InitialKeyRepeat -int 15
# Finder上で隠しファイルも表示する
defaults write com.apple.finder AppleShowAllFiles -bool true
# Dockに「最近開いたアプリ」を表示しないようにする
defaults write com.apple.dock show-recents -bool false
# メニューバーの日時で秒数を表示する
defaults write com.apple.menuextra.clock ShowSeconds -int 1
# スクリーンショットの保存先を設定
mkdir -p ~/screenshots
defaults write com.apple.screencapture location ~/screenshots
# 再起動
sudo reboot

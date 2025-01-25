SHELL := /bin/zsh

.PHONY: setup-mac brew link mise reload sync todo

setup-mac:
	./scripts/setup-mac.sh

brew:
	brew bundle --no-lock --verbose --file=./Brewfile
	brew doctor

link:
	./scripts/link.sh

mise:
	mise install

reload:
	source ~/.zshrc

sync:
	make brew
	make link
	make mise
	make reload

todo: # 初期設定時に必要なことリスト
	@echo "バッテリーの割合(%)を表示"
	@echo "Raycastで設定をインポート"
	@echo "SpotlightのキーボードショートカットをOFF"
	@echo "compauditエラーに対応(例:\`chmod 755 /opt/homebrew/share\`)"

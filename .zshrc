eval "$(mise activate zsh)"
eval "$(starship init zsh)"

#
# alias
#
alias ls='eza --icons'
alias ll='eza -l --icons'
alias la='eza -la --icons'
alias tree='eza --tree --icons'

alias dc='docker compose'

alias gac='git commit --amend'
alias gacm='git commit --amend -m'
alias gad='git add'
alias gbr='git branch'
alias gcm='git commit -m'
alias gco='git checkout'
alias gdf='git diff'
alias gfcm='git commit --allow-empty -m "first commit `date "+%Y-%m-%dT%H:%M:%S"`"'
alias gfe='git fetch -p'
alias glg='git log'
alias glg1='git log --oneline'
alias gpl='git pull -p'
alias gps='git push'
alias gst='git status -s'

alias r='source ~/.zshrc'
alias d='cd ~/dotfiles'

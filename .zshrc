eval "$(mise activate zsh)"
eval "$(starship init zsh)"
eval "$(fzf --zsh)"

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

alias v='nvim'

alias r='source ~/.zshrc'
alias d='cd ~/dotfiles'

#
# zsh-completions
#
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

#
# zsh-autosuggestions
#
if [ `uname -m` = "x86_64" ]; then
  source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
else
  source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

#
# zsh-syntax-highlighting
#
if [ `uname -m` = "x86_64" ]; then
  source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
else
  source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

#
# fzf custom
#
# git checkout using fzf
fgco() {
  local branches
  branches=$(git branch --all | rg -v HEAD | cut -c 3- | sed "s#remotes/[^/]*/##" | awk '!a[$0]++{print}') &&
  echo $branches | fzf | xargs git checkout
}

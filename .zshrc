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

alias cat='bat --style=plain --paging=never'
alias find='fd'
alias grep='rg'

alias dc='docker compose'

alias gac='git commit --amend'
alias gad='git add'
alias gbr='git branch'
alias gbrD='git branch | cut -c 3- | gum choose --no-limit | xargs git branch -D'
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
# z
#
. `brew --prefix`/etc/profile.d/z.sh

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

# git checkout using fzf
fgco() {
  local branches
  branches=$(git branch --all | rg -v HEAD | cut -c 3- | sed "s#remotes/[^/]*/##" | awk '!a[$0]++{print}') &&
  echo $branches | fzf | xargs git checkout
}

# cd git repository using fzf
frepo() {
  local dir
  dir=$(ghq list | fzf) &&
  cd $(ghq root)/"$dir"
}

# git commit using gum
gcm() {
  local summary
  summary=$(gum input --placeholder "Summary of this change") &&
  git commit -m "$summary"
}

# git commit --amend using gum
gacm() {
  local summary
  summary=$(gum input --placeholder "Summary of this change") &&
  git commit --amend -m "$summary"
}

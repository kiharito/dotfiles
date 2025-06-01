eval "$(mise activate zsh)"
eval "$(starship init zsh)"
eval "$(fzf --zsh)"
eval "$(direnv hook zsh)"

# alias
source ~/.aliases

# zsh-completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

# zsh-autosuggestions
source `brew --prefix`/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh-syntax-highlighting
source `brew --prefix`/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# terraform
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

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

# load local custom
if [ -f ~/.zshrc.local ]; then
  source ~/.zshrc.local
fi

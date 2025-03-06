autoload -Uz +X compinit && compinit

## case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select

eval "$(starship init zsh)"

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

. $HOMEBREW_PREFIX/etc/profile.d/z.sh

alias g='git'
alias ga='git add'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gcp='git cherry-pick'
alias gcpa='git cherry-pick --abort'
alias gcpc='git cherry-pick --continue'
alias gclean='git clean --interactive -d'
alias gd='git diff'
alias gds='git diff --staged'
alias gm='git merge'
alias gma='git merge --abort'
alias gmc='git merge --continue'
alias gpr='git pull --rebase'
alias grb='git rebase'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbi='git rebase --interactive'
alias gst='git status'
alias glg='git log --stat'
alias glog='git log --oneline --decorate --graph'
alias gp='git push'
alias gl='git pull'
alias gcmsg='git commit --message'
alias gc='git commit --verbose'
alias gcn!='git commit --verbose --no-edit --amend'

alias ..='cd ..'
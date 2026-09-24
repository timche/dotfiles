if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source /opt/homebrew/etc/profile.d/z.sh

plugins=(git)

source $HOME/.oh-my-zsh/oh-my-zsh.sh

# bun completions
[ -s "/Users/timche/.bun/_bun" ] && source "/Users/timche/.bun/_bun"

eval "$(/Users/timche/.local/bin/mise activate zsh)"

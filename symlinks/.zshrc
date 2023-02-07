# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git z zsh-nvm zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Pure
autoload -U promptinit; promptinit
prompt pure

# hub
alias git="hub"

# Kill all node processes
alias killnode="killall -9 node"

# oh my zsh
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git fnm node npm yarn brew zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# starship.rs
#export STARSHIP_CONFIG=~/.config/starship/config.toml
#export STARSHIP_CACHE=~/.config/starship/cache
#eval "$(starship init zsh)"

# fnm
eval "$(fnm env --use-on-cd --shell zsh)"
FNM_PATH="/Users/jay/Library/Application Support/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/Users/jay/Library/Application Support/fnm:$PATH"
  eval "`fnm env`"
fi

# pnpm
export PNPM_HOME="/Users/jay/Library/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*)
  ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac

# bun completions
[ -s "/Users/jay/.bun/_bun" ] && source "/Users/jay/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# aliases
alias omzr="omz reload"
alias c="clear"
alias e='exit'
alias ls="eza --icons=always --color=always"
#alias vim='nvim'
alias ks="tmux kill-server"

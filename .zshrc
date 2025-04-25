autoload -Uz compinit promptinit
compinit
promptinit

setopt APPEND_HISTORY
setopt SHARE_HISTORY
HISTFILE=$HOME/.zsh_history
SAVEHIST=1000
HISTSIZE=999
setopt HIST_EXPIRE_DUPS_FIRST
setopt EXTENDED_HISTORY

bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward


export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/ssh-agent.socket

prompt agnoster
alias ls='ls --color'

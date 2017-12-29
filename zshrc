HISTFILE=~/.zsh_hist
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep

export PROMPT='[%n@%m | %/]> '

alias ls='ls --color=auto'
alias la='ls -a'

alias q='exit'
alias wifi='nmtui'
alias shutdown='systemctl poweroff'

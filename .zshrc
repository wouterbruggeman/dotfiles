source ~/.config/zsh/exports
source $XDG_CONFIG_HOME/zsh/aliases
source $XDG_CONFIG_HOME/zsh/work

HISTFILE=$XDG_CACHE_HOME/zsh/hist
HISTSIZE=10000 SAVEHIST=1000

autoload -Uz compinit promptinit
compinit

promptinit
source $XDG_CONFIG_HOME/zsh/prompt

zstyle ':completion:*' menu select
setopt COMPLETE_ALIASES
zstyle ':completion::complete:*' gain-privileges 1

setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_SAVE_NO_DUPS

unsetopt beep

#Autostart x
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	  exec startx $XINITRC
fi

#Remove Downloads folder created by Spotify
if [ -d "Downloads" ]; then
	rm -rf ~/Downloads
fi

#Pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

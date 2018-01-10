HISTFILE=~/.zsh_hist
HISTSIZE=100000
SAVEHIST=1000
setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_SAVE_NO_DUPS
unsetopt beep

export EDITOR='vim'
export PROMPT='[%n@%m | %~]> '

# Folder aliasses
alias ls='ls --color=auto'
alias la='ls -a'
alias dotfiles='cd ~/Projects/Other/dotfiles/'
alias school='cd ~/Projects/School/'
alias vakken='cd ~/Projects/School/Vakken/'
alias project='cd ~/Projects/School/Bytegroep/Project2/'
alias pwebsite='cd ~/Projects/School/Bytegroep/website/'
alias website='cd ~/Projects/School/PortfolioWebsite/'

# Git aliasses:
alias gs='git status'
alias ga='git add *'
alias gc='git commit -m'
alias gps='git push'
alias gpl='git pull'
alias g='gource -f -c 2'

# Java aliasses
alias jc='javac *.java'
alias jr='java App'
alias javad='mkdir docs && cd docs && javadoc ../*.java && cd ../'

# Config aliasses
alias zshrc='vim ~/.zshrc'

# Other
alias q='exit'
alias wifi='nmtui'
alias shutdown='systemctl poweroff'
alias nettest='ping archlinux.org -c 5'
alias sysinfo='screenfetch'
alias screenshot='scrot ~/Images/screenshots/'
alias vi='vim'
alias calendar='cal -wy'


HISTFILE=~/.zsh_hist
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep

# Remove the Desktop directory which I'm not using, but keeps getting created.. THIS IS A TEMP FIX!
rm -rf ~/Desktop


export PROMPT='[%n@%m | %/]> '

# Folder aliasses
alias ls='ls --color=auto'
alias la='ls -a'

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


# Other
alias q='exit'
alias wifi='nmtui'
alias shutdown='systemctl poweroff'
alias nettest='ping archlinux.org -c 5'
alias sysinfo='screenfetch'

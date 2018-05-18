HISTFILE=~/.zsh_hist
HISTSIZE=100000 SAVEHIST=1000
setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_SAVE_NO_DUPS
unsetopt beep
export EDITOR='vim'

# Prompt settings
autoload -Uz compinit promptinit
compinit
promptinit
PROMPT='[%n@%m | %~]> '


# Folder aliasses
alias ls='ls --color=auto'
alias la='ls -al'
alias sl='ls'
alias al='la'
alias dotfiles='cd ~/Projects/Other/dotfiles/'
alias school='cd ~/Projects/School/'
alias vakken='cd ~/Projects/School/Vakken/periode4/'
alias project='cd ~/Projects/School/Bytegroep/Project4/'
alias projectcode='cd ~/Projects/School/Bytegroep/Project4/sourcecode/'
alias pwebsite='cd ~/Projects/School/Bytegroep/website/'
alias website='cd ~/Projects/School/PortfolioWebsite/'

# Git aliasses
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

# Arduino aliasses
alias acu='pio run --target upload'
alias asm='pio device monitor -b 9600'

# Config aliasses
alias zshrc='vim ~/.zshrc'

# Package manager aliasses
alias install='sudo pacman -S '
alias remove='sudo pacman -Rns '
alias clean='sudo pacman -Rns $(pacman -Qtdq)'

# Other
alias q='exit'
alias wifi='nmtui'
alias shutdown='systemctl poweroff'
alias nettest='ping archlinux.org -c 5'
alias sysinfo='screenfetch'
alias screenshot='scrot ~/Images/screenshots/'
alias vi='vim'
alias v='vim'
alias calendar='cal -wy'
alias webcamtest='mpv /dev/video0'
alias monitorFix='~/.scripts/fixDisplaySetup.sh'
alias weather="curl -s 'http://wttr.in/Rotterdam'"

alias rpi='screen -T linux /dev/ttyACM0'

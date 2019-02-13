HISTFILE=~/.zsh_hist
HISTSIZE=100000 SAVEHIST=1000

PATH=/bin:/usr/bin:/usr/local/bin:${PATH}
export PATH

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


# Folder aliasses alias 
alias ls='ls --color=auto' 
alias la='ls -l'
alias sl='ls'
alias al='la'
alias dotfiles='cd ~/Projects/Other/dotfiles/'
alias school='cd ~/Projects/School/'
alias vakken='cd ~/Projects/School/Vakken/periode6/'
alias project='cd ~/Projects/School/archgarden/bladmuziek'
alias pwebsite='cd ~/Projects/School/archgarden/website/'
alias website='cd ~/Projects/School/PortfolioWebsite/'

#Python course
alias vymthon='python ~/Projects/School/vymthon/src/vymthon.py'
alias vym=vymthon

# Git aliasses
alias gs='git status'
alias ga='git add *'
alias gc='git commit -m'
alias gd='git diff'
alias gps='git push'
alias gpl='git pull'
alias g='gource -f -c 2'

# Java aliasses
alias jc='javac *.java'
alias jr='java App'
alias javad='mkdir docs && cd docs && javadoc ../*.java && cd ../'

#R aliasses
alias runr='clear && R CMD BATCH main.R && cat main.Rout'

# Arduino aliasses
alias acu='pio run --target upload'
alias asm='pio device monitor -b 9600'

# Config aliasses
alias zshrc='vim ~/.zshrc'
alias vimrc='vim ~/.vimrc'

# Package manager aliasses
alias install='trizen -S '
alias remove='trizen -Rns '
alias clean='trizen -Rns $(trizen -Qtdq)'
alias update='sudo pacman -Syu'

#Vim stuff
alias vim='nvim'
alias vi='vim'
alias nano='vim'

# Other
alias q='exit'
alias wifi='nmtui'
alias shutdown='systemctl poweroff'
alias nettest='ping archlinux.org -c 5'
alias sysinfo='neofetch'
alias screenshot='scrot ~/Images/screenshots/'
alias calendar='cal -wy'
alias webcamtest='mpv /dev/video0'
alias monitorFix='~/.scripts/fixDisplaySetup.sh'
alias weather="curl -s 'http://wttr.in/Rotterdam'"
alias rpi='screen -T linux /dev/ttyACM0'

alias bton='bluetoothctl -- power on'
alias btoff='bluetoothctl -- power off'

#Auto start the x server on tty1
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx; fi

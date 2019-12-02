#!/bin/sh

FOLDER=$1
WS=$2
EDITOR_PATH="$HOME/.scripts/i3/editor/"

URXVT_COMMAND="urxvt -bg #222222"
VIM_COMMAND="vim --servername DEFAULT;"
RANGER_COMMAND="ranger;"

#Change the workspace
if [ -z "$WS" ]
then
	WS=1
fi

#Change directory into the desired folder
if [ ! -z "$FOLDER" ]
then
	cd $FOLDER
fi

#Append the layout to the desired workspace
i3-msg "workspace $WS; append_layout $EDITOR_PATH/layout.json"

#Turn off gaps for the workspace
i3-msg "gaps inner current set 0"

#Start the programs
$($URXVT_COMMAND -name "vim-container" -e zsh -c -i "$VIM_COMMAND" &)
$($URXVT_COMMAND -name "ranger-container" -e zsh -c -i "$RANGER_COMMAND" &)
$($URXVT_COMMAND -name "small-terminal-container" &)
$($URXVT_COMMAND -name "medium-terminal-container" &)

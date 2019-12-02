#!/bin/sh

WS=$1
DIRECTORY=$2

if [ -z "$WS" ]
then
	WS=1
fi

WS_PATH="$HOME/.config/i3/layouts/ws_$WS"

mkdir -p $WS_PATH
i3-save-tree --workspace $WS > $WS_PATH/layout.json

#Do not write to the file directly, this will cause buffering issues
WS_LAYOUT="$(tail -n +2 $WS_PATH/layout.json | fgrep -v '// split' | sed 's|//||g')"
echo $WS_LAYOUT > $WS_PATH/layout.json 

echo "#!/bin/sh" > $WS_PATH/fill.sh
echo "cd $DIRECTORY" >> $WS_PATH/fill.sh
chmod +x $WS_PATH/fill.sh

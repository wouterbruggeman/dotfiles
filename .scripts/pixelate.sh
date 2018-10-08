#!/bin/sh

convert -quality 1 -scale 10% -scale 1000% input.png output.png
convert output.png png8:output.png

convert output.png pixels.txt
echo "Done!"

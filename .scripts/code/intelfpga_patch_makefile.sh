#!/bin/sh

FILENAME=makefile

#Create backup file
cp $FILENAME $FILENAME.old

#Apply formatting
find $FILENAME -type f -exec sed -i 's/COMPILE/compile/g' {} \;
find $FILENAME -type f -exec sed -i 's/CLEAN/clean/g' {} \;



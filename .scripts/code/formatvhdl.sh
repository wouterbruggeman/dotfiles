#!/bin/sh

FILENAME=$1

#Create backup file
cp $FILENAME $FILENAME.old

#Apply formatting
find $FILENAME -type f -exec sed -i 's/;/;\n/g' {} \;


find $FILENAME -type f -exec sed -i 's/LIBRARY/LIBRARY /g' {} \;
find $FILENAME -type f -exec sed -i 's/USE/USE /g' {} \;
find $FILENAME -type f -exec sed -i 's/ENTITY/\nENTITY /g' {} \;
find $FILENAME -type f -exec sed -i 's/COMPONENT/COMPONENT /g' {} \;
find $FILENAME -type f -exec sed -i 's/ARCHITECTURE/ARCHITECTURE /g' {} \;
find $FILENAME -type f -exec sed -i 's/SIGNAL/SIGNAL /g' {} \;
find $FILENAME -type f -exec sed -i 's/PORT MAP/ PORT MAP/g' {} \;

find $FILENAME -type f -exec sed -i 's/DOWNTO/ DOWNTO /g' {} \;
find $FILENAME -type f -exec sed -i 's/CASE/CASE /g' {} \;

find $FILENAME -type f -exec sed -i 's/OF/ OF /g' {} \;
find $FILENAME -type f -exec sed -i 's/IS/ IS\n/g' {} \;


find $FILENAME -type f -exec sed -i "s/BEGIN/BEGIN\n/g" {} \;
find $FILENAME -type f -exec sed -i "s/END/END /g" {} \;
find $FILENAME -type f -exec sed -i "s/IN/IN /g" {} \;
find $FILENAME -type f -exec sed -i "s/OUT/OUT /g" {} \;

find $FILENAME -type f -exec sed -i "s/:/ : /g" {} \;
find $FILENAME -type f -exec sed -i "s/’/'/g" {} \;


find $FILENAME -type f -exec sed -i 's/  / /g' {} \;
find $FILENAME -type f -exec sed -i 's/ ;/;/g' {} \;

#!/bin/bash
set -f
symbols=0
numbers=0
letters=0
for i in $(echo "$1" | grep -o .)
do
case "$i" in
[\!\@\#\$\%\^\&\(\)\_\+\*] ) 
	((symbols++));;
[0-9] )
	((numbers++));;
[a-z-A-Z] )
	((letters++));;
esac
done
echo "Numbers: $numbers Symbols: $symbols Letters: $letters"

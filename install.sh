#!/bin/bash

for F in .*; do
	if [ ! -d "$F" ]; then
		eval 'ln -s "$PWD/$F" $HOME/$F'
		#echo $F
	fi
done


for F in .config/*; do
	sym="$HOME/.config/"
	#echo $sym
	eval 'ln -s "$PWD/$F" $sym'
done

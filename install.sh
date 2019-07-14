#!/bin/bash

git submodule update --init --recursive

shopt -s dotglob
for F in home/[.]*; do
	ln -s "$PWD/$F" "$HOME/"
done
shopt -u dotglob


for F in .config/*; do
	sym="$HOME/.config/"
	ln -s "$PWD/$F" "$HOME/.config/"
done

#!/bin/sh

wal -n -R

[[ -f ~/.Xdefaults ]] && xrdb -merge -I$HOME ~/.Xdefaults

exec i3

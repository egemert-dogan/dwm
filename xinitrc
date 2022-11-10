#!/bin/bash

~/.fehbg &
picom &
/home/sad/statusbar.sh &
while type dwm >/dev/null; do dwm && continue || break; done

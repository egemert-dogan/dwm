#!/bin/bash

## DRACULA
#background=#21222c
#white=#f8f8f2
#cyan=#8be9fd
#red=#ff5555
#purple=#bd93f9
#orange=#ffb86c
#pink=#ff79c6
#yellow=#f1fa8c
#blue=#6272a4

## CATPPUCCIN (DARK)
background=#1e1e2e
white=#cdd6f4
cyan=#89dceb
red=#f38ba8
purple=#cba6f7
orange=#fab387
pink=#b4befe
yellow=#f9e2af
blue=#89b4fa
lavendar=#b4befe

## CATPPUCCIN (LIGHT)
#background=#eff1f5
#white=#4c4f69
#cyan=#04a5e5
#red=#d20f39
#purple=#8839ef
#orange=#fe640b
#pink=#ea76cb
#yellow=#df8e1d
#blue=#1e66f5

volume(){
	printf "^c$blue^  `pamixer --get-volume`%%"
}

disk(){
	printf "^c$cyan^  `df -h | grep "/dev/nvme0n1p3" | awk '{print $4}'`"
}

cpu(){
	printf "^c$red^  `top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}'`%%"
}

mem() {
	printf "^c$orange^  `free -m | grep Mem  | awk '{print $3}'`M"
}

clock() {
	printf "^c$purple^  `date '+%A, %H:%M '`"
}

while true;
do
	xsetroot -name " $(cpu) $(mem) $(volume) $(disk) $(clock)  "
	sleep 1
done

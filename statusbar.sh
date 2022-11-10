#!/bin/bash

black=#21222c
white=#f8f8f2
cyan=#8be9fd
red=#ff5555
purple=#bd93f9
orange=#ffb86c
pink=#ff79c6
yellow=#f1fa8c
blue=#6272a4

volume(){
	printf "^c$black^^b$blue^  `pamixer --get-volume` %"
}

disk(){
	printf "^c$black^^b$cyan^  `df -h | grep "/dev/nvme0n1p3" | awk '{print $4}'`"
}

mem() {
	printf "^c$black^^b$purple^  `free -m | grep Mem  | awk '{print $3}'`M"
}

clock() {
	printf "^c$black^^b$pink^  `date '+%A, %H:%M '`"
}

while true;
do
	xsetroot -name " $(volume) $(disk) $(mem) $(clock)  "
	sleep 1
done

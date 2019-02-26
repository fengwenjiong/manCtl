#!/bin/bash
sudo chmod 777 /dev/tty0
while [ "1" = "1" ]
do
    read -n 1 -s  direction
    if [ "$direction" = "q" ];then
      exit 0
    elif [ "$direction" = "A" ];then
      echo AA 55 0D 0B 00 00 02 58 00 00 00 00 00 00 00 01 5D > /dev/tty0
      echo "UP"
    elif [ "$direction" = "B" ];then
      echo AA 55 0D 0B FF FF FD A8 00 00 00 00 00 00 00 01 52 > /dev/tty0
      echo "DOWN"
    elif [ "$direction" = "C" ];then
      echo AA 55 0D 0B 00 00 00 00 00 00 01 F4 00 00 00 00 F3 > /dev/tty0
      echo "LEFT"
    elif [ "$direction" = "D" ];then
      echo AA 55 0D 0B 00 00 00 00 FF FF FE 0C 00 00 00 00 F4 > /dev/tty0
      echo "RIGHT"
    elif [ "$direction" = "p" ];then
      echo AA 55 0D 0B 00 00 00 00 00 00 00 00 00 00 00 00 06 > /dev/tty0
      echo "STOP"
    else
      :
     # echo "wrong"
    fi
done	

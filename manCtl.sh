#!/bin/bash
#cmd_array=( AA 55 0D 0B 00 00 02 58 00 00 00 00 00 00 00 01 )  
while [ "1" = "1" ]
do
    read -p "enter direction:" direction
    if [ "$direction" = "q" ];then
      exit 0
    elif [ "$direction" = "1" ];then
      #cmd_array=(AA 55 0D 0B 00 00 02 58 00 00 00 00 00 00 00 01)
      for cmd_array in ${cmd_array[@]}
      do
        crc ^= ${cmd_array[@]}
      done
      echo AA 55 0D 0B 00 00 02 58 00 00 00 00 00 00 00 01 crc > /dev/tty0
      #echo "UP"
    elif [ "$direction" = "2" ];then
      echo "DOWN"
    elif [ "$direction" = "3" ];then
      echo "LEFT"
    elif [ "$direction" = "4" ];then
      echo "RIGHT"
    else
      echo "wrong"
    fi
done	

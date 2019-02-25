#!/bin/bash
while [ "1" = "1" ]
do
    read -p "enter direction:" direction
    if [ "$direction" = "q" ];then
      exit 0
    elif [ "$direction" = "1" ];then
      echo "UP"
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

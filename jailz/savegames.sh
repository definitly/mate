#!/bin/sh

 

tar -zcvf  $1.tar.gz  $HOME/.local/share/Steam/steamapps/common/Half-Life/$1/SAVE
ydcmd put  $1.tar.gz 
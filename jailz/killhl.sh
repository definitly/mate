#!/bin/sh

 pid=$(cat $HOME/.local/share/Steam/steamapps/common/Half-Life/hl.pid)
 kill -9 $pid

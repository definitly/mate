#!/bin/sh

 pid=$(ps aux | grep "$HOME[/].local/share/Steam/steamapps/common/Half-Life/hl_linux" | awk '{ print $2 }')
kill -9 $pid

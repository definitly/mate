#!/bin/sh
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

  wget  --content-disposition    --no-check-certificate  https://www.cubby.com/pl/sublime.tar.gz/_32e63ca4bad840b98a446688c714ef58
  mkdir -p /usr/local/opt
  tar -xf  sublime.tar.gz  -C   /usr/local/opt
  ln -s  /usr/local/opt/sublime/sublime_text  /usr/local/bin/sublime
  rm  sublime.tar.gz


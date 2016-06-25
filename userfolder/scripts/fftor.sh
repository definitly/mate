#!/bin/sh


doas  fetch  https://dl.dropboxusercontent.com/u/74640315/tor/mozilla.tar.gz
doas tar -zxvf mozilla.tar.gz -C  /home/ff
doas -u ff nspluginwrapper -a -i
doas rm mozilla.tar.gz 
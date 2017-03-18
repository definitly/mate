#!/bin/sh


doas  fetch  "https://www.dropbox.com/s/r096szusbkvwrq6/mozilla.tar.gz?dl=1"
doas tar -zxvf mozilla.tar.gz?dl=1 -C  /home/ff
doas -u ff nspluginwrapper -a -i
doas rm mozilla.tar.gz?dl=1
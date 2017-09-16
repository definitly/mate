#!/bin/sh


doas  fetch  "https://www.dropbox.com/s/991wpmjglo07w1w/mozilla.tar.gz?dl=1"
doas tar -zxvf mozilla.tar.gz?dl=1 -C  /home/ff
doas -u ff nspluginwrapper -a -i
doas rm mozilla.tar.gz?dl=1
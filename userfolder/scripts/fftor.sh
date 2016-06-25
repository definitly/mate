#!/bin/sh


daos  fetch  https://dl.dropboxusercontent.com/u/74640315/tor/mozilla.tar.gz
daos tar -zxvf mozilla.tar.gz -C  /home/ff
daos -u ff nspluginwrapper -a -i
daos rm mozilla.tar.gz 
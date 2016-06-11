#!/bin/sh


sudo  fetch  https://dl.dropboxusercontent.com/u/74640315/tor/mozilla.tar.gz
sudo tar -zxvf mozilla.tar.gz -C  /home/ff
sudo -u ff nspluginwrapper -a -i
sudo rm mozilla.tar.gz 
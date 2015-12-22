#!/bin/sh

#sudo  wget --content-disposition    --no-check-certificate  https://www.cubbyusercontent.com/pl/mozilla.tar.gz/_a4dc1c1f0dc745638e6e65cf0c31d7a0
sudo  wget https://dl.dropboxusercontent.com/u/74640315/tor/mozilla.tar.gz
sudo tar -zxvf mozilla.tar.gz -C  /home/ff
sudo -u ff nspluginwrapper -a -i
sudo rm mozilla.tar.gz 
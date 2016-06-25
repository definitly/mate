#!/bin/sh



cd /usr/local/www/
doas git clone https://github.com/Novik/ruTorrent.git 
doas chown -R www:www /usr/local/www/ruTorrent
doas cp /home/definitly/mate/rtorrent/config.php     /usr/local/www/ruTorrent/conf
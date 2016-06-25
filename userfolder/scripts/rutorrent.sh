#!/bin/sh



cd /usr/local/www/
daos git clone https://github.com/Novik/ruTorrent.git 
daos chown -R www:www /usr/local/www/ruTorrent
daos cp /home/definitly/mate/rtorrent/config.php     /usr/local/www/ruTorrent/conf
#!/bin/sh

login=rtorrent
CURRENTDIRECTORY=$(pwd)
#edit rc.conf

                      echo 'rtorrent_enable="YES"'        >>                   /etc/rc.conf 
                      cp  $CURRENTDIRECTORY/rtorrent       /usr/local/etc/rc.d
                      chmod 744                            /usr/local/etc/rc.d/rtorrent
                  
                      cp $CURRENTDIRECTORY/rtorrent.rc     /home/$login/.rtorrent.rc
                      cp /usr/local/etc/php.ini-production /usr/local/etc/php.ini
                      cp $CURRENTDIRECTORY/php-fpm.conf    /usr/local/etc
                      cp $CURRENTDIRECTORY/nginx.conf      /usr/local/etc/nginx
                      cd /usr/local/www/ 
                      git clone https://github.com/Novik/ruTorrent.git
                      chown -R www:www /usr/local/www/ruTorrent
                             mkdir                         /home/$login/.rtsession
                             chmod -R  777                 /home/$login/.rtsession
                             mkdir                         /home/$login/downloads
                             chmod -R  777                 /home/$login/downloads
                            
                             mkdir                         /home/$login/watch
                             chmod -R  777                 /home/$login/watch
                             chmod -R  777                 /home/$login

#!/bin/sh
CURRENTDIRECTORY=$(pwd)


# edit rc.conf 

                     echo 'polipo_enable="YES"'          >>           /etc/rc.conf
                     echo 'tor_enable="YES"'             >>           /etc/rc.conf



                      mkdir -p                                        /usr/local/etc/tor/
                      chmod -R 0777                                   /var/run/tor

                      cp    $CURRENTDIRECTORY/torrc                   /usr/local/etc/tor/
                      chmod 00444                                     /usr/local/etc/tor/torrc
                      cp    $CURRENTDIRECTORY/config                  /usr/local/etc/polipo/

#tor create log file
                      mkdir -p          /var/run/tor
                      chmod -R 0777     /var/run/tor
                      touch             /var/log/tor
                      chmod 0002        /var/log/tor


                      mkdir -p          /var/run/polipo
                      chmod -R 0777     /var/run/polipo
                      touch             /var/log/polipo
                      chmod 0777        /var/log/polipo
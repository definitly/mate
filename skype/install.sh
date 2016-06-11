#!/bin/sh

dirpkg="/usr/local/etc/pkg/repos"

if [ -f $dirpkg/freebsd.conf ];

                    then
                  echo "файл существует"
                           else
               echo "copy freebsd.conf to $dirpkg"
               echo "pkg update"
                    exit 0                 


                   fi 






cd /tmp

            if [ -f skype_new ];

                    then
                  echo "файл существует"
                           else
                      fetch  https://dl.dropboxusercontent.com/u/74640315/skype/skype_new
                      chmod +x skype_new
                   fi 


                  sudo   cp   skype_new  /usr/local/bin 
        

                  sudo  pkg install -r skype-devel -yU skype-devel
                  sudo pkg install -r skype-devel -yU linux-c6-libv4l linux-c6-libsigc++20 linux-c6-alsa-plugins-oss

                  sudo  pkg add    https://bitbucket.org/vcore/skype-devel/src/abe0d75f4fa5648e563829b1b839c8d08e8b3082/linux-c6-dbus-libs-1.2.24_1.txz
                  sudo  pkg install -yU linux-c6-hicolor-icon-theme
                  sudo  pkg install -yU linux-c6-libGLU  
                  sudo  pkg add    https://bitbucket.org/vcore/skype-devel/src/abe0d75f4fa5648e563829b1b839c8d08e8b3082/linux-c6-qt47-4.7.2_1.txz
                  sudo  pkg add    https://bitbucket.org/vcore/skype-devel/src/abe0d75f4fa5648e563829b1b839c8d08e8b3082/linux-c6-qt47-x11-4.7.2_1.txz
                  sudo  pkg add    https://bitbucket.org/vcore/skype-devel/src/abe0d75f4fa5648e563829b1b839c8d08e8b3082/linux-c6-qt47-webkit-4.7.2_1.txz
                 

                 if [ -f skype-devel.tar.gz ];

                    then
                  echo "файл существует"
                           else
                       fetch   https://dl.dropboxusercontent.com/u/74640315/skype/skype-devel.tar.gz
                      
                   fi 
 
#!/bin/sh
CURRENTDIRECTORY=$(pwd)
login=definitly
login2=rtorrent

#rtorrent user

                    cp      $CURRENTDIRECTORY/userfolder/.Xdefaults             /home/$login2
                    echo    'defflow off'            >>                         /home/$login2/.screenrc



#create user space
                     cp -rf $CURRENTDIRECTORY/userfolder/.[a-zA-Z0-9]*   /home/$login  
                     cp -rf $CURRENTDIRECTORY/userfolder/[a-zA-Z0-9]*    /home/$login   
                     chown  -R  $login:wheel /home/$login
#create downloads folder
                       mkdir  /home/$login/downloads
                       chown  -R      $login:wheel                        /home/$login/downloads
#create VirtualBox VMs folder

#                       mkdir  /home/$login/VirtualBox\ VMs 
#                       chown  -R      $login:wheel                         /home/$login/VirtualBox\ VMs 

#create .icons and themes .folder
                       mkdir  /home/$login/.icons
                       chown  -R      $login:wheel                        /home/$login/.icons
#                      mkdir  /home/$login/.themes
#                      chown  -R      $login:wheel                       /home/$login/.themes    

#create pic folder      
#                       mkdir  /home/$login/pic
#                       chown  -R      $login:wheel                      /home/$login/pic

#create share folder for virtualbox
                       mkdir  /home/$login/share
                       chown  -R      $login:wheel                      /home/$login/share
                   


#/home/$login/.cshrc

#                       echo 'set prompt="%{^[[40;33;1m%}[%T] %{^[[40;33;1m%} %/ %"'   >>            /home/$login/.cshrc
#                      echo 'set prompt="\n%{\033]0;%m:%c3^G%}[%{\033[1;36m%} %P %{\033[0m%} %{\033[0m%} ] (%{\033[1;33m%} %~ %{\033[0m%}) % \n%# "'           >>            /home/$login/.cshrc
#                       echo 'alias kn        killall -9  npviewer.bin'                >>            /home/$login/.cshrc
#                       echo 'alias ks        killall -9  sp-sc-auth'                  >>            /home/$login/.cshrc
#                       echo 'alias kw        killall -9  wine'                        >>            /home/$login/.cshrc
#                       echo 'alias sm        mpv http://localhost:8908/tv.asf'        >>            /home/$login/.cshrc
#                       echo 'alias kf        killall -9  firefox'                     >>            /home/$login/.cshrc
#                       echo 'alias cdd       cd  ~/downloads'                         >>            /home/$login/.cshrc 
#                       echo 'alias cds       cd  ~/scripts'                           >>            /home/$login/.cshrc
#                       echo 'alias rtmp          ~/scripts/rtmp.sh'                   >>            /home/$login/.cshrc
#                       echo 'alias krtmp     killall -9 rtmpsrv'                      >>            /home/$login/.cshrc
#                       echo 'alias m3u8          ~/scripts/tcpdump_m3u8.sh'           >>            /home/$login/.cshrc
#                       echo 'setenv TERM xterm-256color'                              >>            /home/$login/.cshrc 


#/home/$login/.login  
                  
#                     echo './f.sh'                                                  >>            /home/$login/.login 


chown  -R      $login:wheel   /mnt

                        
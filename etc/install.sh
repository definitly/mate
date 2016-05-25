#!/bin/sh
# sopcast xorg 

CURRENTDIRECTORY=$(pwd)
login=definitly



#copy   xorg.conf
# проверяем какая карта ati или nvidia  
и копируем нужный xorg.conf




#a=$(cat /root/pid  |grep  nvidia)


 #   if ! [ -z $a ] ; 
  #     then  
            cp  $CURRENTDIRECTORY/xorg.conf  /etc/X11 ; 
            kldload  nvidia ;
   #   else 
   #        cp  $CURRENTDIRECTORY/xorg.conf.ati   /etc/X11/xorg.conf ;
                   
   # fi


#tarxf             
               cp $CURRENTDIRECTORY/tarxf                           /usr/local/bin


#mlbviewer        

#                    tar -xf   $CURRENTDIRECTORY/mlbviewer2013-sf-8.tar.gz -C         /home/$login/
#                    chown  -R      $login:wheel                                      /home/$login/mlbviewer2015
#                    ln -s  /home/$login/mlbviewer2015/mlbviewer.py  /usr/local/bin/mlb 


#sp-cs-auth
#                    tar -xf $CURRENTDIRECTORY/sp-sc-auth.tar.gz -C        /usr/local/bin

#copy sopcast
                   cp $CURRENTDIRECTORY/sopcast                          /usr/local/bin

#copy winetricks
#                    cp $CURRENTDIRECTORY/winetricks /usr/local/bin


#copy  pkg-pubkey.cert
                    cp $CURRENTDIRECTORY/pkg-pubkey.cert                   /usr/local/etc

#copy youtube 
#                     cp $CURRENTDIRECTORY/youtube                         /usr/local/bin
#copy cpic

                    cp $CURRENTDIRECTORY/cpic                             /usr/local/bin

#copy unrpm        

                    cp $CURRENTDIRECTORY/unrpm                            /usr/local/bin


#copy undeb       

                    cp $CURRENTDIRECTORY/undeb                            /usr/local/bin


#copy freebsd.conf
                    mkdir -p /usr/local/etc/pkg/repos
  #                  cp  $CURRENTDIRECTORY/freebsd.conf                      /usr/local/etc/pkg/repos
# copy free

                   cp  $CURRENTDIRECTORY/free  /usr/local/bin


#copy  patch-nvidia.sh

 # cp  $CURRENTDIRECTORY/patch-nvidia.sh /usr/local/share/wine


# создание ссылки для mountiso.sh и umount.iso

ln -s   /home/$login/.scripts/mountiso.sh /usr/local/bin/mountiso
ln -s   /home/$login/.scripts/umountiso.sh  /usr/local/bin/umountiso


                        

#create  aliases.db
 make -C /etc/mail aliases

#set_wallpaper.sh

cp  $CURRENTDIRECTORY/set_wallpaper.sh  /usr/local/bin/

#feh_browser.sh

cp    $CURRENTDIRECTORY/feh_browser.sh  /usr/local/bin/
                      
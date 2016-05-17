#!/bin/sh

CURRENTDIRECTORY=$(pwd)

          ./accounts.sh
          ./config.sh
          ./flash.sh
          ./userfolder.sh
          #./yandexdisk.sh
          
          cd $CURRENTDIRECTORY/dzenconky
          ./install.sh
          cd ..
          cd $CURRENTDIRECTORY/etc
          ./install.sh
          cd .. 
          cd $CURRENTDIRECTORY/tint2
          ./install.sh
          cd ..
          cd $CURRENTDIRECTORY/switchscreen
          ./install.sh
          cd ..
          cd $CURRENTDIRECTORY/postinstall
          ./install.sh
          cd ..  
          cd $CURRENTDIRECTORY/noteconky
          ./install.sh
          cd .. 
          cd $CURRENTDIRECTORY/rtorrent
          ./install.sh
          cd .. 
          cd $CURRENTDIRECTORY/micro_httpd
          ./install.sh
          cd .. 
            


          cd $CURRENTDIRECTORY/weatherconky
          ./install.sh
          cd ..  
          cd $CURRENTDIRECTORY/monitoring
          ./install.sh
          cd ..
          cd $CURRENTDIRECTORY/mpvd
          ./install.sh
          cd ..
          cd $CURRENTDIRECTORY/tor
          ./install.sh 
          cd .. 
          cd $CURRENTDIRECTORY/worldtime
          ./install.sh 
          cd .. 
          
          cd $CURRENTDIRECTORY/scrollconky
          ./install.sh 
          cd .. 


          cd $CURRENTDIRECTORY/webcamd
          ./install.sh 
          cd .. 
         
          cd $CURRENTDIRECTORY/xscreensaver
          ./install.sh 
          cd .. 

          
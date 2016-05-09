#!/bin/sh


 if ! [ -d /compat/ubuntu ]; then

     gdrive download -i 0Bz5rjpkCwREsOGJzbUlmUVl2UGM

     sudo     tar -xf ubuntu12.04.tar.gz -C /compat
   
   fi 

      



fetch http://repo.steampowered.com/steam/archive/precise/steam_latest.tar.gz
  

  tar -zxvf steam_latest.tar.gz

  

 ./steam/steam
 ./steamrun
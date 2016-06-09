#!/bin/sh


  if ! [ -f steam_latest.tar.gz ]; then 

      fetch http://repo.steampowered.com/steam/archive/precise/steam_latest.tar.gz
      tar -zxvf steam_latest.tar.gz
  
   fi  

 ./steam/steam
 ./steamrun
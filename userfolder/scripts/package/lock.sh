#!/bin/sh



  for i in $(cat lockpkg); do


 sudo   pkg lock  -y $i 


   done
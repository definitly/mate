#!/bin/sh



  for i in $(cat lockpkg); do


 doas   pkg lock  -y $i 


   done
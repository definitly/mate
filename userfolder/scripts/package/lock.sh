#!/bin/sh



  for i in $(cat lockpkg); do


 daos   pkg lock  -y $i 


   done
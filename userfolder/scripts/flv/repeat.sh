#!/usr/local/bin/bash

LIMIT=100000
a=0

while [ $a -le "$LIMIT" ]
do
 a=$(($a+1))
mplayer -ontop -geometry 600x340+1050+100  $a.flv
 
done
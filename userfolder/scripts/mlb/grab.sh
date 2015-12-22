#!/bin/sh
echo "введите имя гостей и хозяев и число месяца"
read  guest  home d


mlb="mlb"
end="_1&mode=video"
_="_"
mp4="_1200K.mp4"
  
           
mkdir $guest'_vs_'$home
cd    $guest'_vs_'$home

page="http://mlb.mlb.com/mlb/gameday/index.jsp?gid=2015_04_$d$_$guest$mlb$_$home$mlb$end"
 echo   $page



s=$(curl  $page | grep "#/play?content_id=" | sed -r 's/.* href="([^"]+)" .*/\1/' | sed -r 's/[^0-9]//g')

 
                 for id_video in $s ; do
              

fetch              http://mediadownloads.mlb.com/mlbam/2015/04/$d/mlbtv_$guest$home$_$id_video$mp4
fetch              http://mediadownloads.mlb.com/mlbam/2015/04/$(($d + 1))/mlbtv_$guest$home$_$id_video$mp4
                 done
 

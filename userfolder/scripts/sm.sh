#!/bin/sh

proc=mplayer


    while true; do 


      if ! [ -z $(pgrep $proc) ]
                then
                  sleep 5 
          
                else
                    export DISPLAY=localhost:0.1
                    mplayer http://localhost:8908/tv.asf  &
          fi

     done 
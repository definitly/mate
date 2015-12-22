#!/bin/sh
proc=conkytime

  
          
   
         
          
          if ! [ -z $(pgrep $proc) ]
                then
                   killall -9 conkytime
                else
                    conkytime  -d -c ~/.timeconkyrc  &
        fi
           
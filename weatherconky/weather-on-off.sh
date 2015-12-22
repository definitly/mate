#!/bin/sh
proc=conkyweather

  
          
   
         
          
          if ! [ -z $(pgrep $proc) ]
                then
                   killall -9 conkyweather
                else
                    conkyweather  -d -c ~/.weatherconkyrc  &
        fi
           
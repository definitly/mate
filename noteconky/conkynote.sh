#!/bin/sh
proc=conkynote

  
          
   
         
          
          if ! [ -z $(pgrep $proc) ]
                then
                   killall -9 conkynote
                else
                    conkynote  -d -c ~/.noteconkyrc  &
        fi
           
     ./conkynote -d -c ~/.noteconkyrc
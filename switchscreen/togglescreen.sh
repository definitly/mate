#!/bin/sh


SWITCHSCREEN=switchscreen



CURSCR=` switchscreen -P | gawk '{ print $2 }'`


if [ "$CURSCR" = "0" ]; then
    NEWSCR=1
else
    NEWSCR=0
fi



$SWITCHSCREEN   $NEWSCR

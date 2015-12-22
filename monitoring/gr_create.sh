#!/bin/sh

export LANG=UTF-8
export LC_ALL=ru_RU.UTF-8

#Picture CPU 12 hours

CPUBASE="/var/db/cputemp.rrd"
WWWPREFIX="/home/definitly"
RRDCMD="/usr/local/bin/rrdtool"
$RRDCMD graph $WWWPREFIX/cpu12h.png \
--width 580 \
--height 250 \
--imgformat PNG \
--start -12h \
--end now \
--slope-mode \
--font-render-mode light \
--font DEFAULT:8:Tahoma \
--font TITLE:9:Arial \
--font AXIS:7:Arial \
--font UNIT:8:"Courier New" \
--font LEGEND:7:"Courier New" \
--font WATERMARK:1:Arial \
--color BACK#2F2F2F \
--color CANVAS#003333 \
--color SHADEA#CCCCCC \
--color SHADEB#CCCCCC \
--color FONT#FFFFFF \
--color AXIS#FFFFFF \
--color ARROW#FF0000 \
--color GRID#CCCCCC \
--color MGRID#CCCCCC \
--vertical-label "Processor temerature, C" \
--title "Temperature from last 12 hours" \
DEF:core0=$CPUBASE:core0:LAST \
DEF:core1=$CPUBASE:core1:LAST \
LINE3:core0#FFFF00:"CPU core0 " \
AREA:core0#FF0000:"" \
GPRINT:core0:LAST:"Last %1.0lf deg, C " \
GPRINT:core0:MAX:"Max %1.0lf deg, C " \
GPRINT:core0:AVERAGE:"Avg %1.0lf deg, C " \
GPRINT:core0:MIN:"Min %1.0lf deg, C \c" \
COMMENT:"\s" \
LINE2:core1#00FF00:"CPU core1 " \
GPRINT:core1:LAST:"Last %1.0lf deg, C " \
GPRINT:core1:MAX:"Max %1.0lf deg, C " \
GPRINT:core1:AVERAGE:"Avg %1.0lf deg, C " \
GPRINT:core1:MIN:"Min %1.0lf deg, C \c" \
COMMENT:"\n"



#Picture CPU 12 hours

CPUBASE="/var/db/cpuload.rrd"
WWWPREFIX="/home/definitly"
RRDCMD="/usr/local/bin/rrdtool"
$RRDCMD graph $WWWPREFIX/cpuload.png \
--width 580 \
--height 250 \
--imgformat PNG \
--start -12h \
--end now \
--slope-mode \
--font-render-mode light \
--font DEFAULT:8:Tahoma \
--font TITLE:9:Arial \
--font AXIS:7:Arial \
--font UNIT:8:"Courier New" \
--font LEGEND:7:"Courier New" \
--font WATERMARK:1:Arial \
--color BACK#2F2F2F \
--color CANVAS#003333 \
--color SHADEA#CCCCCC \
--color SHADEB#CCCCCC \
--color FONT#FFFFFF \
--color AXIS#FFFFFF \
--color ARROW#FF0000 \
--color GRID#CCCCCC \
--color MGRID#CCCCCC \
--vertical-label "Idle, %" \
--title "Idle from last 12 hours" \
DEF:idle=$CPUBASE:idle:LAST \
DEF:user=$CPUBASE:user:LAST \
LINE3:idle#FFFF00:"CPU idle " \
AREA:idle#FF0000:"" \
GPRINT:idle:LAST:"Last %.2lf %% idle" \
GPRINT:idle:MAX:"Max %.2lf %% idle" \
GPRINT:idle:AVERAGE:"Avg %.2lf %% idle " \
GPRINT:idle:MIN:"Min  %.2lf %% idle \c" \
COMMENT:"\s" \
LINE2:user#00FF00:"CPU user" \
GPRINT:user:LAST:"Last %.2lf" \
GPRINT:user:MAX:"Max %.2lf" \
GPRINT:user:AVERAGE:"Avg %.2lf" \
GPRINT:user:MIN:"Min %.2lf \c" \
COMMENT:"\n"



CPUBASE="/var/db/memory.rrd"
WWWPREFIX="/home/definitly"
RRDCMD="/usr/local/bin/rrdtool"
$RRDCMD graph $WWWPREFIX/memory.png \
--width 580 \
--height 250 \
--imgformat PNG \
--start -12h \
--end now \
--slope-mode \
--font-render-mode light \
--font DEFAULT:8:Tahoma \
--font TITLE:9:Arial \
--font AXIS:7:Arial \
--font UNIT:8:"Courier New" \
--font LEGEND:7:"Courier New" \
--font WATERMARK:1:Arial \
--color BACK#2F2F2F \
--color CANVAS#003333 \
--color SHADEA#CCCCCC \
--color SHADEB#CCCCCC \
--color FONT#FFFFFF \
--color AXIS#FFFFFF \
--color ARROW#FF0000 \
--color GRID#CCCCCC \
--color MGRID#CCCCCC \
--vertical-label "Idle, %" \
--title "Idle from last 12 hours" \
DEF:wired=$CPUBASE:wired:LAST \
DEF:active=$CPUBASE:active:LAST \
DEF:inactive=$CPUBASE:inactive:LAST \
DEF:free=$CPUBASE:free:LAST \
LINE6:wired#FFFF00:"CPU idle " \
AREA:wired#FF0000:"" \
GPRINT:wired:LAST:"Last %5.1lf %% idle" \
GPRINT:wired:MAX:"Max %5.1lf %% idle" \
GPRINT:wired:AVERAGE:"Avg %5.1lf %% idle " \
GPRINT:wired:MIN:"Min  %5.1lf %% idle \c" \
COMMENT:"\s" \
LINE5:active#FFFF00:"CPU idle " \
AREA:active#FF0000:"" \
GPRINT:active:LAST:"Last %5.1lf %% idle" \
GPRINT:active:MAX:"Max %5.1lf %% idle" \
GPRINT:active:AVERAGE:"Avg %5.1lf %% idle " \
GPRINT:active:MIN:"Min  %5.1lf %% idle \c" \
COMMENT:"\s" \
LINE4:inactive#FFFF00:"CPU idle " \
AREA:inactive#FF0000:"" \
GPRINT:inactive:LAST:"Last %5.1lf %% idle" \
GPRINT:inactive:MAX:"Max %5.1lf %% idle" \
GPRINT:inactive:AVERAGE:"Avg %5.1lf %% idle " \
GPRINT:inactive:MIN:"Min  %5.1lf %% idle \c" \
COMMENT:"\s" \
LINE2:free#00FF00:"CPU user" \
GPRINT:free:LAST:"Last %5.1lf" \
GPRINT:free:MAX:"Max %5.1lf" \
GPRINT:free:AVERAGE:"Avg %5.1lf" \
GPRINT:free:MIN:"Min %5.1lf \c" \
COMMENT:"\n"









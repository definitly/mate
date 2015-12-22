#!/bin/sh 
export LD_PRELOAD=/usr/local/lib/libv4l/v4l2convert.so
export LIBV4LCONTROL_FLAGS=6
mpv --no-correct-pts av://v4l2:/dev/video0

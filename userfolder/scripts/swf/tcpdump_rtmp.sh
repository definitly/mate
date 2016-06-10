#!/bin/sh


sudo tcpdump -w file.tcpdump -s 0 -i ale0 
tcpdump -A -nnr file.tcpdump  2>&1   |   grep -ao "rtmp://.\+.flash"
tcpdump -A -nnr file.tcpdump  2>&1   |   grep -ao "play.\+.=="
#!/bin/sh


sudo tcpdump -w file.tcpdump -s 0 -i ale0
tcpdump -A -nnr file.tcpdump  2>&1   |   grep -ao "play.\+.==" | sed 's|.*B||' > old/play_tcUrl
tcpdump -A -nnr file.tcpdump  2>&1   |   grep -ao "rtmp://.\+.flash" |  sed 's/\.//' >> old/play_tcUrl


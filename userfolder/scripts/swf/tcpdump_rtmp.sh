#!/bin/sh


sudo tcpdump -w file.tcpdump -s 0 -i ale0
tcpdump -A -nnr file.tcpdump | grep rtmp
tcpdump -A -nnr file.tcpdump | grep 19453?
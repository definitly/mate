#!/bin/sh



for i in $(ls *flv); do

 ffmpeg -i $i  $i.avi


done 
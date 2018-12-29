#!/bin/sh
export DISPLAY=:0.1
fetch http://cdn.f1-fansite.com/wp-content/uploads/2017/03/170019_aus.jpg
feh --bg-scale ~/$(ls | grep *jpg)
tint2 &
openbox &

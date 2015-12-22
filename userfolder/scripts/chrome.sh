#!/bin/sh

wget --content-disposition    --no-check-certificate https://www.cubbyusercontent.com/pl/chromium.tar.gz/_4978f91d00614a0ca8041ac22fd67dbf

tar -zxvf chromium.tar.gz  -C  ~/.config

rm chromium.tar.gz 
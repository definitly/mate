#!/bin/sh

wget --content-disposition   https://www.cubbyusercontent.com/pl/Default.tar.gz/_ac9c4bf0521e4e14887bfb030d129986

tar -xf  Default.tar.gz -C ~/.config/chromium

rm Default.tar.gz
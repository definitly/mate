#!/bin/sh

rm -R ~/.steam
rm -R ~/.local/share/Steam

steam
cp steam.sh   ~/.local/share/Steam
steam
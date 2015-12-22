#!/bin/sh
sudo pkg install -y python3 py27-pafy
git clone https://github.com/mps-youtube/mps-youtube.git
sudo cp -R /usr/local/lib/python2.7/site-packages/pafy /usr/local/lib/python3.4/site-packages
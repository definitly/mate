#!/bin/sh

sudo ifconfig ale0 down

sudo ifconfig ale0 192.168.1.33 netmask 255.255.255.0 up
sudo service tor start && sudo service polipo start
sudo service tor stop && sudo service tor start
sudo service polipo stop && sudo service polipo start
#!/bin/sh

doas ifconfig ale0 down

doas ifconfig ale0 192.168.1.33 netmask 255.255.255.0 up
doas service tor start && doas service polipo start
doas service tor stop && doas service tor start
doas service polipo stop && doas service polipo start
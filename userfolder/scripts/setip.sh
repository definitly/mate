#!/bin/sh

daos ifconfig ale0 down

daos ifconfig ale0 192.168.1.33 netmask 255.255.255.0 up
daos service tor start && daos service polipo start
daos service tor stop && daos service tor start
daos service polipo stop && daos service polipo start
#!/bin/sh


 for i in $(cat allpkg); do
            cd /usr/ports/*/$i
echo $i
       cat Makefile | grep DOCS
             done
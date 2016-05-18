#!/bin/sh


 for i in $(ls) ;do
 echo $i
 cat $i |  grep -e token=

 done
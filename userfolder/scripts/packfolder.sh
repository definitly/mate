#!/bin/sh

    for i in $(ls -d */  | sed 's/^\(.*\).$/\1/'); do
             tar -czf $i.txz $i
             done

  
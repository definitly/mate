#!/bin/sh


   for path in $(cat pkg_leaves); do


       echo "${path%-*}" >> pkg_leaves_final

   done
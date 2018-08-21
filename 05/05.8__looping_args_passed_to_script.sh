#!/bin/bash

# PROBLEM: Take on action on a given list of args
#          Use a list of files with regex: *.txt pattern

# Special variable $* refers to all args and can be used in a loop
# Changes the permission of all files
for FN in $*
# iterate on statements between do and done
do
  echo changing $FN
  chmod +x $FN
done
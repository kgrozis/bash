#!/bin/bash

# PROBLEM: Quotes around variable but fails when a file has a space in name
#          pattern matching with a space in it becomes 2 items in list instead of one

# $@: - when quoted, the resulting list has quotes around each arg separetely
#       Even if one pattern match has a space in it
for FN in "$@"
do 
  chmod +x $FN
done

#!/bin/bash

# Problem: Need to print vars with other text
#          A '$' is used to refer to var
#          How to distinguish from text that follows

# Use full syntax for variable reference '${<var name>}'
for FN in 1 2 3 4 5
do 
    ls /tmp/rep${FN}port.txt
done

# shell vars can only contain alphanumeric chars and the underscore
# vars can not include whitespce or punctuation
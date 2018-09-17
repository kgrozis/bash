#!/bin/bash

# PROBLEM: 2 types of args for a script: options that modify script behavior and real args
#          Need way to get rid of option args after they've been processed

# $VERBOSE is a flag var for echo'ing working file or not
# -v will be inputed for a conditional true 
# After setting $VERBOSE flag shift is used to rid the -v arg and $2 becomes $1
VERBOSE=0
if [[ $1 = -v ]]
then 
    VERBOSE=1
    shift
fi
for FN in "$@"
do 
    if (( VERBOSE == 1 ))
    then
        echo changing $FN
    fi
    chmod +x "$FN"
done
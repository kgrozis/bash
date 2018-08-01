#!/bin/bash

# Problem: Want to run an every changing list of scripts and don't want to modify a
#          master list

# Put scripts in a directory
# Write script to run everything in dir

# foreach file that matches pattern *
for SCRIPT in /Volumes/kgrozis/bash/04/*
do 
    # if file is a file and executable then try script
    if [ -f "$SCRIPT" -a -x "SCRIPT" ]
    then
        $SCRIPT
    fi
done
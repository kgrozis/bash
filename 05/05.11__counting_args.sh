#!/bin/bash

# PROBLEM: Need to know how many parameters teh script was invoked with

# ${}
echo ">>> ARGUMENTS: $#"
if (( $# < 3 ))
then
    printf "%b" "Error. Not enough arguments.\n" >&2
    printf "%b" "usage: myscript file1 op file2\n" >&2
    exit 1
elif (( $# < 3 ))
then 
    printf "%b" "Error. Too many arguments.\n" >&2
    printf "%b" "usage: myscript file1 op file2\n" >&2
    exit 2
else
    printf "%b" "argument count correct. Processing...\n"
fi
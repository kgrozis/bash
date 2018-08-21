#!/bin/bash

# PROBLEM: How can you see whih variables have been exported and their values

# set gives all values of all variables and func defs in current shell
# gives valus in format: name=value
set

# env or export -p commands gies values of all variables that have been exported
# env and export -p are subset of values from set
# env will gives values in format: name=value
export -p 
# in bash 4.0 and newer can use declare -p
# export and declare give values as they are being declared and initialized
#   declare arguements:
#   declare -i = integer
#   declare -x = exported
#   declare -r = read-only
#   declare -a = array
declare -p
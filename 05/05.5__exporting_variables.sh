#! /bin/bash

# PROBLEM: Pass a variable from one script to another script

# Export passes variables 
export NAME=value

# declare export variables
export FNAME
export SIZE
export MAX

# assign export variables
MAX=2048
SIZE=64
FNAME=/tmp/scratch

# declare and assign export values
export FNAME=/tmp/scratch
export SIZE=64
export MAX=2048

# Sends on environment values to stdout
# all values are available to scripts
# most values are set at startup
env
export -p

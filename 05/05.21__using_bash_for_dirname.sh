#!/bin/bash

# PROBLEM: Want something like dirname, but don't want to launch a seperate executable
# SOLUTION: Use string manipulation

MYPATHTOFILE=${1}
echo "Path and File is ${MYPATHTOFILE}"
echo "dirname $(dirname ${1})"

# % remove the righthand side of variable
# /* remove any number of chars after last slash
DIR=${MYPATHTOFILE%/*}
echo "Path is ${DIR}"


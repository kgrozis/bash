#!/bin/bash

# PROBLEM: Want to invoke script with a parameter and don't want to set a shell variable.
#          Want to pass data to another script

# command-line parameters: any word on the cmd-line following name of script are availabe to the script as numbered variables
# don't need {} on single digit numbers (1-9)
# $10 will equal $1 + literal 0
# {} are required to seperate from surrounding text
echo ${1} $10 ${10}
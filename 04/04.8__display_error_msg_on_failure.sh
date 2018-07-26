#!/bin/bash

# Problem: Want verbosity on error failure.  See error msgs on failure. Don't want
#   if statements to distract from visual flow of statements

# use || with cmds to display errors or debug
#   tells bash to only evaluate 2nd statement when first fails
#   opposite of &&
ls /not/a/directory || printf "%b" "cmd failed. you're on your own\n"

# || is between 2 cmds: immediately to right or left.  
#   'exit 1' will always execute since it is the 2nd cmd
ls /not/a/directory || printf "%b" "FAILED\n" ; exit 1 

# 'exit 1' is part of the 1st cmd and will now only execute on
#   failure
ls /not/a/directory || { printf "%b" "FAILED\n" ; exit 1 ; }


#!/bin/bash

# Problem: Want to know whether cmd succeeded or not
# shell var $? is set to nonzero if cmd fails

# Success: Return 0
# In shell scripts always have a successful script exit with zero
ls
echo $?

# Faiure: Return 1
# In shell script return nonzero 1-127 if script fails
ls /fake/dir
echo $?
# Can only read exit status once
# expect 0; exit status is reporting previous cmd 'echo $?'
echo $?

# can immediately assign vale to another variable 
# to maintain value
ls /fake/dir
STAT=$?
echo $STAT
echo $STAT

# Can get immediate feedback in script on failure
ls /fake/dir
# (( )): evaluates an arithmatic expr
if (( $? )) ; then echo failed ; else echo OK; fi

# don't use negative numbers in exit commands
# unexpected results occur
bash -c 'exit -2'; echo $?     # returns 254
bash -c 'exit -200'; echo $?   # returns 64
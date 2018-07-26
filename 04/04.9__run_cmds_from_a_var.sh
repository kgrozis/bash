#!/bin/bash

# Problem: Want to run different cmds in script depending on circumstances

FN=mytmp/blah
# assign a program name to a var
#   will substitue cmd in shell and execute
PROG=echo
$PROG $FN
PROG=cat 
$PROG $FN 

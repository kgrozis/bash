#!/bin/bash

# PROBLEM: Want force user to givee a value or don't proceed
# SOLUTION: Use ${:?} syntax
#           If unset or null Bash will print an error msg and exit

# default behavior will print line number as part of error msg.  
# set -u stops default behaior and make more readible 
# set +u will restart default behavior
set -u

USAGE="usage: myscript scratchdir source conversion"
FILEDIR=${1:?"Error. You must supply a scratch directory."}
FILESRC=${2:?"Error. You must supply a source file."}
/tmp CVTTYPE=${3:?"Error. $USAGE. $(rm $SCRATCHFILE)"}


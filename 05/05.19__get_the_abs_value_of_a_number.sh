#!/bin/bash

# PROBLEM: Have a numeric value in a var and want abs value
# SOLUTION: Use string manipulation -- ${MYVAR#-}
#           # searches from front of string and looks for a leading minus
#           Returns values without minus sign -- abs value

# if/then/else logic
MYVAR=${1}
if (( MYVAR < 0 ))
then
    let MYVAR=MYVAR*-1
fi
echo ${MYVAR}

# string manipulation
MYVAR=${1}
MYVAR=${MYVAR#-}
echo ${MYVAR}
#!/bin/bash

#PROBLEM: Basename cmd does what you want.  Can you get same results without calling
#         an external executable.  Is bash string manipulation able to do that?
# SOLUTION: Bash can strip the dir path from a shell var string and leave just the last
#           partof the path (filename)

FULLPATHTOFILE=${1}
echo "File name is ${FULLPATHTOFILE}"
# Using basename:
# Parenthesis to run an executable basename with an arg
# - ignores a trailing / (/usr/local/tmp/file/ -> file/)
FILE=$(basename $FULLPATHTOFILE)
echo "File name minus path is ${FILE}"
# basename can remove a suffix
FILE=$(basename $FULLPATHTOFILE .jpg)
echo "File name minus suffix is ${FILE}"

# Using bash string manipulation:
# Curly braces to evaluate a string
#   - # starts from the beginning of string
#   - ## longest match
#   - */ any number of chars matching /
#   - removes trailing / (/usr/local/tmp/file/ -> '')
FULLPATHTOFILE=${1}
echo "File name is ${FULLPATHTOFILE}"
FILE=${FULLPATHTOFILE##*/}
echo "File name minus path is ${FILE}"
# extra steps to remove a suffix
FILE=${FULLPATHTOFILE%/}  # remove a trailing /
echo "File name minus trailing slash is ${FILE}"
FILE=${FILE##*/}          # remove all chars to last /
echo "File name minus path is ${FILE}"
FILE=${FILE%.jpg}         # remove .jpg suffix
echo "File name minus suffix is ${FILE}"


#!/bin/bash

# PROBLEM: Script relies on certain environment variables
#          Need to guarantee reasonable default values
# Solution: Use assignment operator in shell reference the 1st time you refer to it
#           assign a value to the variable if it doesn't already have one

# := operator will substitue /tmp if HOME is not set or if HOME becomes unset
# := does not work with postional arguement ie: ${1:=/tmp}; Must use ${1-/tmp}
echo ${HOME:=/tmp}
#!/bin/bash

# PROBLEM: Need more than just a constant string as teh default value for a variable
# SOLUTION: Use result of complex shell expression

# if BASE is not set, run pwd utility and assign it to base
cd ${BASE:="$(pwd)"}

# Parameter expansion: use other shell variables in the expression
${BASE:=${HOME}}

# Tilde expansion: expression ~<user-name>, expands to refer to the home dir of user
#                  does not work with quotes
${BASE:=~uid17}

# Command Substition: take output of cmd as value for variable.  
#                     Cmds are enclosed in parentheses, $(cmds)

# Arithmetic expansion: integer arithmetic using $(())
echo ${BASE:=/home/uid$((ID+1))}
#!/bin/bash

# PROBLEM: Have a default value, but want to allow an empty value as valid
#          Default should be set if value is unset (not null)
# Solution: Omit colon (:) which indicates to make the substition if the value is unset ${VAR=value}

# No substituion needed
echo ${HOME=/tmp} 

HOME=""
# Will NOT substitute
echo ${HOME=/tmp}

# Will substitute
unset HOME
echo ${HOME=/tmp}

echo ${HOME}

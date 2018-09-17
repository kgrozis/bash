#!/bin/bash

# PROBLEM: Script accepts args from CLI.  Want default values w/o user needing to input
# SOLUTION: Use ${:-} syntax when referring to parameter and supply a default value

# 1st position arg will be set to /tmp if null
# null can be represented as ""
FILEDIR=${1:-/tmp}
echo ${FILEDIR}

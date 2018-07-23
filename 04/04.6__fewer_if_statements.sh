#!/bin/bash

# Problem: Want to check exit code without a conditional

# && provides condiitonal execution
# first cmd is always run
# second cmd only runs if 1st succeeds
cd mytmp && rm *

# Can set bash to exit anytime it recieves a non-zero exit status
#   from all cmds in script
#   'set -e' flag does this
#   don't do this in an interactive shell.  it will close shell on non-zero exit status
set -e
cd mytmp
rm *
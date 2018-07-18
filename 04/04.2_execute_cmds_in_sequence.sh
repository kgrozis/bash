#!/bin/bash

# Problem: Run several cmds without waiting for each to finish before issuing next cmd

# type cmds into a shell script
# one cmd per line
echo "long description on the shell"
echo "medium descripton"
echo "short"

# use a semi-colon for a single line
# each program is ran regardless of whether the preceding fails
echo "long description on the shell"; echo "medium descripton"; echo "short"

# use double amberstands on a single line
# each program is ran is preceding programe worked
echo "long description on the shell"; echo "medium descripton"; echo "short"
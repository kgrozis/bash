#!/bin/bash

# Problem: Need to run 3 independent cmds 
# Run commands in background using ampersand (&)
# By default output still goes to screen 
echo "long description on the shell" &
echo "medium descripton" &
echo "short"

# single line 
echo "long description on the shell" & echo "medium descripton" & echo "short"
# kill the long job (1st job)
kill %1

# reconnect to a job in the background (2nd job)
# fg without an arg works for a single job
fg %2

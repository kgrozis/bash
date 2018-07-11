#! /bin/bash

# ls command with a redirect does not give expected output
ls
ls > /tmp/save.out 
# get 1 file per line instead of multiple (ls -1 -- format)
# default ls code has different output for terminal vs file.  This influences redirection
cat /tmp/save.out
ls -1

# -C option requests all output is columnar
ls -C > /tmp/save.out 
cat /tmp/save.out

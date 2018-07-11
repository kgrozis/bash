#! /bin/bash

# pipes only work with stdout
# &3-: the trailing - closes the file descriptor 3
# tee -a appends and doesn't replace in file
echo test 3>&1 1>stdout.logfile 2>&3- | tee -a stderr.logfile

# use file descriptors in a script to swap stderr with stdout
# ./myscript 3>&1 1>&2 2>&3
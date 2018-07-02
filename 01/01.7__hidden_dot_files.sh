#! /bin/bash

# Create files to perform actions on
touch ..foo .a .normal_dot_file normal_file
# list all files
ls -a
# list all files with a dot that is at least 3 chars long
ls -d .??*
# list any file starting with . but not followed by . (..)
ls -d .[!.]*
# list 
ls -d .[!.]* .??* | sort -u
#! /bin/bash

# prompt for password without echoing to screen
# use read command with -s option
#   -s: is for silent
#   -p: next arg is the promp to be displayed prior to reading input
# password is stored in variable $PASSWD
read -s -p "password: " PASSWD
# creates a newline.  Enter will be suppressed with -s option
printf "%b" "\n"
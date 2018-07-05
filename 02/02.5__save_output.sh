#! /bin/bash

# use > to redirect output into a file
# stdout
echo fill it up
# to a file
# no output will appear on shell since redirected
echo fill it up > file.txt
# output created file to stdout
cat file.txt

#! /bin/bash

# redirect output of cat into a temporary file
# use file as input to sort
cat one.file another.file > /tmp/cat.out
sort < /tmp/cat.out 
rm /tmp/cat.out

# send output of ct directly into sort by using pipe symbol (|)
# no more tmp file and garbage clean up (delete tmp)
cat one.file another.file | sort

# link a sequence of cmds together by using multiple pipes
cat *file | tr 'a-z' 'A-Z' | sort | uniq | awk -f transform.awk | wc
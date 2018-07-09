#! /bin/bash

# Cannot output in a pipeline seq without disrupting the full pipeline
cat *file | tr 'a-z' 'A-Z' | sort | uniq | awk -f transform.awk | wc

# 'tee' command splits output into 2 identical streams:
# - 1 written to file
# - 2 written to stdout
cat *file | tr 'a-z' 'A-Z' | sort | uniq | tee /tmp/pipeout.tmp | awk -f transform.awk | wc
cat /tmp/pipeout.tmp

# save ouptut from a long running cmd and see it on the screen
# output to screen
# find /Volumes/kgrozis -name '*.c*' -print | less
# output to file
# find /Volumes/kgrozis -name '*.c*' -print > /tmp/all.my.sources
# both output and file
find /Volumes/kgrozis -name '*.c*' -print | tee /tmp/all.my.sources
cat /tmp/all.my.sources

# errors automaticatically show up in tee file, but will be printed to stdout
# modify to output errors to file
find /Volumes/kgrozis -name '*.c*' -print 2>&1 | tee /tmp/all.my.sources
cat /tmp/all.my.sources
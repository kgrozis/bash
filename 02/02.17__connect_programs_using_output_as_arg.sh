#! /bin/bash

# have a program that can't read from stdin like rm
# find . -name '*.c' | rm
# rm can only take its args from cmd line

# use xarg command
# $() encloses a cmd run in a subshell
# output from $() is substituted on cmdline for $() phrase
# newlines cause output to become several parameters on cmdline
# earlier shell syntax used backquotes (``) instead of $()
# rm -i requires cmdline input to delete a file.
rm -i $(find . -name '*.err')
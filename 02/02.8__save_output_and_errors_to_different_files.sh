#! /bin/bash

# 0 descriptor redirects STDIN
# 1 descriptor redirects STDOUT without errors
# 2 descriptor redirects STDERR
echo string 1> messages.out 2> messages.err

# when no descriptor number is specified STDOUT is assumed
echo string > messages2.out 2> messages2.err
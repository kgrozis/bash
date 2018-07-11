#! /bin/bash

# default:
#   - head: outputs first 10 lines
#   - tail: outputs last 10 lines

# skip first line
# -n or -number <number>: specifies offset relative to end of file
# +<number>: changes offset to start of file
# +1 gives entire file
tail -n +2 lines
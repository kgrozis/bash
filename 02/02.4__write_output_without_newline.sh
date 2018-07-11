#! /bin/bash

# echo has implicit newline at the end of a statement
# printf requires eplicit newline at the end of a statement ("\n")
# output appears on the same line as the next shell prompt
# uses:
#   when partial output is needed across many statements before completing a line
#   Want to display a pompt to the user before reading input
printf "%s %s" next prompt

# echo -n removes implicit newline at the end of a statement
echo -n prompt
# echo -e inhibit printing newline or next char
echo -e 'hi\c'
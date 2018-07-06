#! /bin/bash

# several cmds on one line
# only las cmd will be redirected
pwd; ls; cd ..; pwd; ls > /tmp/all.out
printf "\n\nall.out\n"
cat /tmp/all.out

# braces ({}) group cmds together
# redirection now applies to all cmds
# need ; after ls to close braces
# braces {} are reserved words and must be surrounded by whitespace
{ pwd; ls; cd ..; pwd; ls; } > /tmp/all2.out
printf "\n\nall2.out\n"
cat /tmp/all2.out

# alternative
# whitespace and a closing ; is not required with parentheses
# commands in parenthese run in another instance of the shell (subshell)
# subshell uses same vars and path as main shell
(pwd; ls; cd ..; pwd; ls) > /tmp/all3.out
printf "\n\nall3.out\n"
cat /tmp/all3.out

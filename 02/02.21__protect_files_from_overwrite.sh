#! /bin/bash

# don't want a file to be over-written by redirect (clobber)
# set -o noclobber: prevents redirects from over-writing
#   if you attempt to over-write an error msg will be returned
#   noclobber essentially takes place of file permission
# set +o noclobber: allows redirects to over-write

# allow redirects
set +o noclobber
# create file & write
echo something > my.file
# over-write file 
echo some more > my.file
# prevent redirects
set -o noclobber
# error
# echo something > my.file
# concat file
#   noclobber only stops redirection and not other file manipulation
#   example: can copy a file and over-write my.file
#   cp some.file my.file
echo some more >> my.file


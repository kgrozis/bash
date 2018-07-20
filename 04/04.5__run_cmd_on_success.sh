#!/bin/bash

# Problem: Want to only run a command(s) if another one succeeds

# cd must succed and return 0
cd mytmp
# cd return 0 then rm all file in mytmp dir
# without if statement all files in cwd would be deleted on failure
if (( $? == 0)); then rm *; fi
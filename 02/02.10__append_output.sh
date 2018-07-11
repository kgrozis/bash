#! /bin/bash

# Each time output is redirected a new file is created (aka clobbering output)
# >> redirctor appends output without creating a new file
# redirect ls and create new file
ls > /tmp/ls.out 
cd ..
# append to existing file
ls >> /tmp/ls.out
cd ..
# append to existing file and include stderr
ls >> /tmp/ls.out 2>&1
cd /
# append to existing file and include stderr
# macOS doesn't except
# ls &>> /tmp/ls.out

# output file
cat /tmp/ls.out
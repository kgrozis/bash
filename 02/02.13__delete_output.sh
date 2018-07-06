#! /bin/bash

# Don't want output saved
# redirect output to /dev/null (bit bucket)
find . -name myfile -print 2> /dev/null
echo test > /dev/null 2>&1
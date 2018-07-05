#! /bin/bash

# redirect output to somewhere else in filesystem and not current working directory
# use pathname
# if filename begins with a / then it is an absolute pathname -- from root
# if filename starts without a / then it is a relative pathname -- from cwd

# absolute pathname
echo some more data > /tmp/echo.out
cat /tmp/echo.out

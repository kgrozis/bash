#! /bin/bash

# preferred way to redirect both STDOUT and STDERR
# >& and &> are shortcuts for sending STDOUT and STDERR to same file
echo test >& outfile1
# Alternative
echo test &> outfile2
# 2nd Alternative
# take 2 (STDERR) and send it to the file descriptor 1 (outfile3)
echo test > outfile3 2>&1
# 3rd Alternative
# take 2 (STDERR) and send it to file (outfile4) and send STDOUT (1) to same descriptor
echo test 2> outfile4 1>&2

# Output files
cat outfile*
#! /bin/bash

# redirection with file numbers to open all the files you want to use
# by default i/o is directed:
# - 0 stdin
# - 1 stdout
# - 2 stderr
# - 3 first available descriptor
bash divert 3> three.file 4> four.file 5> five.file 6> six.file
#! /bin/bash

# with '<<-' you can indent with tabs for readability at beginning of the line
grep $1 <<-'EOF'
  lots of data
  can go here
  it's indented with tabs
  to match the script's indenting
  but the leading tabs are
  discarded when read
  EOF
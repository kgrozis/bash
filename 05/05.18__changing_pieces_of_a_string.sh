#!/bin/bash

# PROBLEM: Rename an exisitng file
# Solution: Use mv utility

# iterate over files with an .bad extension
for FN in *.bad
do
# rename file to .bash extension
# %bad remove bad from filename
# quotes used so there can be spaces in names
    mv "${FN}" "${FN%bad}bash"
done
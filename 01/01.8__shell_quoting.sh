#! /bin/bash

# no quotes
# $5 is considered a variable and expanded to null 
echo A coffe is $5?!
# double quotes
# Fails because ! is treated as a history substitution and no history is provided
### echo "A coffee is $5?!"
# single quotes
# Treated as a literal expression and works as expected
echo 'A coffee is $5?!'

# use a mix of single quotes for literal expression and double quotes for 
#    substitution
echo 'A coffee is $5 for' "$USER" '?!'
# use double quotes with an escape character (\)
# ! is not escapable
echo "A coffee is \$5 for $USER\!"
# a space after ! will negate the history substitution
# could also use ""
echo "A coffee is \$5 for $USER! "

# unbalanced quotes
# Cannot embed "" quotes inside of ''.  They will be treated as literals
# working unbalanced double quotes
echo "$USER won't pay \$5 for coffee."
# working unbalanced single quotes
echo 'I won'\''t pay $5 for coffee.'
#! /bin/bash

# User input

# gets user input and puts it into shell variable REPLY
read
echo $REPLY

# -p prints a prompt
# quoting allows multiple words in prompt 
# add space at end of prompt for readibility
# sets input response into new variable named ANSWER
read -p "answer me this: " ANSWER
echo $ANSWER

# -t sets a timeout for read statement
read -t 3 -p "answer quickly: " ANSWER
echo $ANSWER

# supplying multiple variables
# read parse words and assigns them to variables in order of input
read PRE MID POST
echo $PRE
echo $MID
echo $POST
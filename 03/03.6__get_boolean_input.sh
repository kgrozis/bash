#! /bin/bash

# want yes / no input
# no case sensitivity
# useful defualt if user presses enter

function choose {
    local default="$1"
    local prompt="$2"
    local choice_yes="$3"
    local choice_no="$4"
    local answer

    read -p "$prompt" answer
    [ -z "$answer" ] && answer="$default"

    case "$answer" in
        [yY1] ) eval "$choice_yes"
            # error check
            ;;
        [nN0] ) eval "$choice_no"
            # error check
            ;;
        *     ) printf "%b" "Unexpected answer '$answer'!" >&2 ;;
    esac
} # end of function choose

choose "" "type something: " "echo YES!" "echo NO!"

function choice {
    CHOICE=''
    local prompt="$*"
    local answer
    
    read -p "$prompt" answer
    case "$answer" in
        [yY1] ) CHOICE='y';;
        [nN0] ) CHOICE='n';;
        *     ) CHOICE="answer";;
    esac
    echo $CHOICE
} # end of function choice

choice "type something: "

CHOICE=''
until [ "$CHOICE" = "y" ]; do 
    printf "%b" "This package's date is $THISPACKAGE\n" >&2
    choice "Is that correct? [Y/,<New date>]: "
    if [ -z "$CHOICE" ]; then
        CHOICE='y'
    elif [ "CHOICE" != "y" ]; then
        printf "%b" "Overriding $THISPACKAGE with $CHOICE\n"
        THISPACKAGE=$CHOICE
    fi
done
#build package here

# If the user types anything except a case-insensitive 'n', they will
# see the error log
choice "Do you want to look at the error logfile? [Y/n]: "
if [ "$CHOICE" != "n" ]; then
    less error.log
fi

# If the user types anything except a case-insensitive 'y', they will
# not see the message log
choice "Do you want to look at the message logfile? [y/N]: "
if [ "$CHOICE" = "y" ]; then
    less message.log
fi
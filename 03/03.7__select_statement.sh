#! /bin/bash

# want to provide a user with a list of options to choose from
# select statement
directorylist="Finished $(for i in /*;do [ -d "$i" ] && echo $i; done)"

PS3='Directory to process? ' # Se a useful select prompt
until [ "directory" == "Finished" ]; do 

    printf "%b" "\a\n\nSelect a directory to process:\n" >&2
    select directoy in $directorylist; do

        # User types a Number which is stored in $REPLY, but select
        # returns the value of the entry
        if [ "$REPLY" == "Finished" ]; then
            echo "Finished processing directories."
            break
        elif [ -n "$REPLY" ]; then
            echo "You chose number $REPLY, processing $directory..."
            # Do something here
            break
        else
            echo "Invalid selection!"
        fi # end of handle user's selection
    done # end of select a directory
done # end of until dir == finished
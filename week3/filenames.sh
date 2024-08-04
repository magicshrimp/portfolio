#!/bin/bash

read -p "Enter file name here: " file

### tests each line in the document to see if it is a file or a directory.
for line in $(cat "$file"); do
    if [ -f "$line" ]; then
        echo "$line: that file exists!"
    elif [ -d "$line" ]; then
        echo "$line: Thats a directory!"
    else 
        echo "$line: I don't know what that is!"
    fi
done < "$file"
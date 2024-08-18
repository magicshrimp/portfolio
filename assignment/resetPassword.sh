#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
BROWN='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0;37m'
GREY='\033[0;30m'


#this is where the script prompts user to type password
echo -e "Please type the current password: \\n"
read -s currentPass
hashedPass=$(echo -n $currentPass | sha256sum)
storedPass=$(cat password.txt) 

#For troubleshooting, uncomment these lines to compare the hash output of password vs the stored hash
#echo -n "$hashedPass"
#echo -n "$storedPass"
if
    [ "$hashedPass" = "$storedPass" ]
then 
    read -s -p "Great! Please type new password: " newPass
    echo -n "$newPass" | sha256sum > ~/scripts/portfolio/assignment/password.txt
    echo -e "\\n\033[0;32mSUCCESS!$NC Your password has been updated!"
else   
    echo -e "\\n\033[0;31mAccess denied$NC. Incorrect password."
    exit 1
fi


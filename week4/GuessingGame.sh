#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
BROWN='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0;37m'
GREY='\033[0;30m'
###variables can be entered into script body by using the echo -e command with the colour variable entered
###for example, echo -e '[COLOUR] I love colour'

printError()

{

    echo -e "\033[31m***ERROR:***\033[0m$1"

}

printRed()

{

    echo -e "\033[31m$1\033[0m"

}

printGreen()

{

    echo -e "\033[0;32m$1\033[0m"

}

getNumber()

{

    read -p "$1: "

    while (( $REPLY < $2 || $REPLY> $3 )); do

        printError "Input must be between $2 and $3"

        read -p "$1: "

    done

}

magicNumber()

{

    #***Sets variables as local variables, which means they only apply inside this function***
    local magic_number=$1
    local guess

    #***While loop compares the entered magic number against the number set when the function is run eg; 42***
    #***It then either prints a winning message and exits with code 0 or prompts user to try again, the loop only closes unless the correct answer is provided.***
    while true; do
        read -p "Guess the magic number between 1 and 100, or type exit: " guess
        if [[ $guess -eq $magic_number ]]; then
            printGreen "You win! You found the magic number!"
            printGreen "*** Thanks for playing ***"
            exit 0
        elif [[ $guess = "exit" ]]; then
            printRed "Bested by a simple script..."
            printRed "*** Thanks for playing ***"
            exit 1
        elif [[ $guess < $magic_number ]]; then
            printRed "TOO LOW.."
        elif [[ $guess > $magic_number ]]; then
            printRed "TOO HIGH.."
        fi
    done

}

echo -e "${CYAN} *** Magic Number Guessing Game *** ${NC}"

magicNumber 42



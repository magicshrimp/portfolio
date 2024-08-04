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

echo "Welcome to web downloader."

while :
do 
    read -p "Please type the address of the web page you would like to download, or type exit: " var_web

        if [ "$var_web" = "exit" ]
            then exit 1
        else 
            echo "Web address entered."
        fi

    read -p "Please type the location you would like to store the web page, or type exit: " var_local

        if [ "$var_local" = "exit" ]
            then exit 1
        else
            echo "Local path entered."
        fi

    wget -p $var_local $var_web
done
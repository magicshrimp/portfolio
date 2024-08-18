#!/bin/bash

###variables can be entered into script body by using the echo -e command with the colour variable entered
###for example, echo -e '[COLOUR] I love colour'
RED='\033[0;31m'
GREEN='\033[0;32m'
BROWN='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0;37m'
GREY='\033[0;30m'


echo -e "${GREEN}Welcome to web downloader.${NC}."

#This is the wget function that downloads the selected website
while :
do 
    read -p "Please type the address of the web page you would like to download, or type exit: " var_web

        if [ "$var_web" = "exit" ]
            then exit 1
        else 
            echo -e "${BLUE}Web address entered..${NC}"
        fi

    wget -O ${download_path}/downloaded_page.html "$var_web"
    echo -e "${GREEN}Page downloaded as downloaded_page.html${NC}"
done
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

###SECTION 1 - This section prompts user to enter password and compares the hash of that password with the saved hash in the password file
read -sp "Enter password: " var_secret

var_hash=$(echo -n $var_secret | sha256sum)

hash_file="password.txt"
stored_hash=$(cat "$hash_file")

#These commands echo both hashes which would be useful for troubleshooting in case of hashes not matching.
#echo "1: $var_hash"
#echo "2: $mstored_hash"

if [ "$var_hash" == "$stored_hash" ]
    then echo "Access Granted!"
else
    echo "Access Denied.. "
    exit 1
fi
###END SECTION 1

EXIT=0

###SECTION 2 - This section establishes the loop that the script menu is built on
while :
    do

    #Sesion 2 - this section checks the exit code variable to allow or deny access.
    if [ $EXIT = "1" ]
        then echo -e "$RED"; echo "****************"; exit 1
        else echo -e "$GREY"
             echo -e "${RED}Welcome to my web scraping script. If you have not used this script before, please read the info by pressing "1"${NC}. \n\n1. Info \n2. Reset Password \n3. Set Download Location \n4. List Download Folder Contents \n5. Download a URL \n6. Scrape Data \n7. Exit $RED\n\n****************"
             echo -e "$NC"
    fi 

    read choice
    case $choice in

    1 )
        echo -e "${PURPLE}Hi there, welcome to my web scraping script. To use this script properly, you need to make sure you set the correct local path to save the local copy of the website you want to download"
        echo -e "To do this, press option "3" in order to set your download location. If this location does not exist, this script will create this folder for you."
        echo -e "Please use this script responsibly and make sure the site you wish to scrape will allow this. If you are not sure if it is allowed, please contact the website directly to gain permission before you use target that site with this script."
        echo -e "Thanks for reading!${NC}"
;;
    2 )
        echo -e "$PURPLE"
        echo -e "Reset Password"
        echo -e "$NC"
        ./resetPassword.sh
;;
    3 )
        echo -e "$PURPLE"
        echo -e "Set Download Location"
        echo -e "$NC"
        read -p "Enter Preferred Download Path: " download_path
        if [ ! -d "$download_path" ]; then
            mkdir "$download_path"
        fi
        export download_path
;;
    4 )
        echo -e "$PURPLE"
        echo -e "List Download Folder Contents"
        echo -e "$NC"
        ls -1 --color='auto' $download_path
;;
    5 )
        echo -e "$PURPLE"
        echo -e "Download a URL"
        echo -e "$NC"
        ./webDownloader.sh
;;
    6 )
        echo -e "${GREEN}Data scraper selected.${NC}"
        if [ ! -f "${download_path}/downloaded_page.html" ]; then
            echo -e "${RED}File not found..${NC}"
            exit 1
        fi

        #This SED string removes the HTML tags from the data leaving it much more readable
        sed -e ':a;N;$!ba;s/<[^>]*>//g' ${download_path}/downloaded_page.html > ${download_path}/cleaned_data.html
        ./dataScraper.sh

;;
    7 )
        echo -e "$RED"
        echo -e "EXIT Selected"
        echo -e "$NC"
        exit 1
;;
    * )
        echo -e "$RED INVALID OPTION"
        echo -e "$NC"
;;
    esac
done
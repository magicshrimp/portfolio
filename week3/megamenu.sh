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

#Sestion 1 - this section runs the password check script and saved the exit code as a variable.
./passwordCheck.sh ; EXIT=$?
#echo "EXIT=${EXIT}"

while :
    do

    #Sesion 2 - this section checks the exit code variable to allow or deny access.
    if [ $EXIT = "1" ]
        then echo -e "$RED"; echo "****************"; exit 1
            else echo -e "$GREY"
                echo -e "1. Create a Folder \n2. Copy a Folder \n3. Set a password \n4. Calculator \n5. Create Week Folders \n6. Check Filenames \n7. Download a URL \n8. Exit $RED\n\n****************"
                echo -e "$NC"
    fi 

read choice
    case $choice in
    1 )
        echo -e "$PURPLE"
        echo -e "Create a Folder selected!"
        echo -e "$NC"
        ./foldermaker.sh
;;
    2 )
        echo -e "$PURPLE"
        echo -e "Copy a Folder selected!"
        echo -e "$NC"
        ./2-3-foldercopy.sh
;;
    3 )
        echo -e "$PURPLE"
        echo -e "Set a Password selected!"
        echo -e "$NC"
        ./setPassword2.sh
;;
    4 )
        echo -e "$PURPLE"
        echo -e "Calculator selected!"
        echo -e "$NC"
        ./calculator.sh
;;
    5 )
        echo -e "$PURPLE"
        echo -e "Create Week Folders selected!"
        echo -e "$NC"
        ./megafoldermaker.sh
;;
    6 )
        echo -e "$PURPLE"
        echo -e "Filename Checker selected!"
        echo -e "$NC"
        ./filenames.sh
;;
    7 )
        echo -e "$PURPLE"
        echo -e "Download a URL selected!"
        echo -e "$NC"
        ./webDownloader.sh
;;
    8 )
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
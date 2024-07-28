#!/bin/bash

#Sestion 1 - this section runs the password check script and saved the exit code as a variable.
./passwordCheck.sh ; EXIT=$?
#echo "EXIT=${EXIT}"

#Sesion 2 - this section checks the exit code variable to allow or deny access.
if [ $EXIT = "1" ]
then echo "****************"
else echo -e "1. Create a Folder \n2. Copy a Folder \n3. Set a password\n****************"
fi 

#Section 3 - this section accepts use input of one of the menu options and runs the associated script with their choice.
read choice
if [ $choice = "1" ]
then ./foldermaker.sh
elif [ $choice = "2" ]
then ./2-3-foldercopy.sh
elif [ $choice = "3" ]
then ./setPassword2.sh
fi
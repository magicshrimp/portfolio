#!/bin/bash

#this asks the question about where you would like to save the password.txt
echo "Please type the which week's folder you wish to save your password in :)"

#this command asks for your input to the previous question
read week

#this line is to echo your chosen folder back to you to confirm its accuracy
echo "Great. You have chosen $week"

#here the script is asking you to type your password
echo "Please type your password"

#this is the input to the previous prompt
read password

#this line writes the password input to the desired folder location in the form of a password text document
echo "$password" > ~/scripts/portfolio/"$week"/password.txt

#states that your password document has been created and ask user to confirm that the document is where it is supposed to be
echo "Great! Please check the desired folder directory to make sure your password has been saved!"

#this command generates a successful response on completion of the script
exit 0

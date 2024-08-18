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

###variable input
echo -e "$CYAN Welcome to calculator!"
echo -e "$NC Please enter your first variable: "
read -r var_1
echo -e "Please select your operator. $BLUE
        \n1. Addition $GREEN
        \n2. Subtraction $RED
        \n3. Multiplication $PURPLE
        \n4. Division $NC" 
read -r operator
echo -e "Please enter your second variable: "
read -r var_2

###calculator component
case $operator in
1 )
result=$( echo $var_1 + $var_2 | bc );
echo -e "$BLUE";
echo -e "Result = $result";
echo -e "$NC"
;;
2 )
result=$( echo $var_1 - $var_2 | bc );
echo -e "$GREEN";
echo -e "Result = $result";
echo -e "$NC"
;;
3 )
result=$( echo $var_1 \* $var_2 | bc );
echo -e "$RED";
echo -e "Result = $result";
echo -e "$NC"
;;
4 )
result=$( echo $var_1 / $var_2 | bc );
echo -e "$PURPLE";
echo -e "Result = $result";
echo -e "$NC"
;;
* )
echo -e $RED"Incorrect operator"
echo -e "$NC"
;;
esac
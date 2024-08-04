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

#establishes the FRUITS array
FRUITS=('Apple' 'Mango' 'Strawberry' 'Orange' 'Banana')

#for loop that echos fruits inside FRUITS array
for FRUIT in "${FRUITS[@]}"
do echo "FRUIT: $FRUIT"
done
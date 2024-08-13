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


###Created a function to perform the grep searches in case they need to be expanded on later
findStuff()
{
grep --colour='auto' -r sed ~/scripts/portfolio/
grep --colour='auto' -r '^[mM]' ~/scripts/portfolio/
grep --colour='auto' -r '[0-9]{3}' ~/scripts/portfolio/
grep --colour='auto' -r 'echo .* .*' ~/scripts/portfolio/
grep --colour='auto' -r -E '^[^\b]{12}$' ~/scripts/portfolio/
}

findStuff
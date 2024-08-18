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

#This section is the menu
echo -e "${CYAN}Please select what you would like to search for: "
echo -e "${PURPLE}\n1.${NC} phishing${PURPLE}\n2.${NC} spoofing${PURPLE}\n3.${NC} hack${PURPLE}\n4.${NC} denial of service${PURPLE}\n5.${NC} malware${PURPLE}\n6.${NC} mobile${PURPLE}\n7.${NC} Exit ${RED}\n\n****************${NC}"
read input

#This case statement records menu input and processes the desired action
case $input in
1 )
    echo -e "${GREEN}phishing selected. searching...${NC}"
    grep -i "phishing" ${download_path}/cleaned_data.html > ${download_path}/log.txt
    echo -e "${CYAN}Searching complete! Please check the log file saved to the download path for your results.${CYAN}"
;;
2 )
    echo -e "${GREEN}spoofing selected. searching...${NC}"
    grep -i --colour='auto' "spoofing" ${download_path}/cleaned_data.html > ${download_path}/log.txt
    echo -e "${CYAN}Searching complete! Please check the log file saved to the download path for your results.${CYAN}"
;;
3 )
    echo -e "${GREEN}hack selected. searching...${NC}"
    grep -i --colour='auto' "hack" ${download_path}/cleaned_data.html > ${download_path}/log.txt
    echo -e "${CYAN}Searching complete! Please check the log file saved to the download path for your results.${CYAN}"
;;
4 )
    echo -e "${GREEN}denial of service. searching...${NC}"
    grep -i --colour='auto' "denial of service|Dos|DDOS" ${download_path}/cleaned_data.html > ${download_path}/log.txt
    echo -e "${CYAN}Searching complete! Please check the log file saved to the download path for your results.${CYAN}"
;;
5 )
    echo -e "${GREEN}malware. searching...${NC}"
    grep -i --colour='auto' "malware" ${download_path}/cleaned_data.html > ${download_path}/log.txt
    echo -e "${CYAN}Searching complete! Please check the log file saved to the download path for your results.${CYAN}"
;;
6 )
    echo -e "${GREEN}mobile. searching...${NC}"
    grep -i -E --colour='auto' "mobile" ${download_path}/cleaned_data.html > ${download_path}/log.txt
    echo -e "${CYAN}Searching complete! Please check the log file saved to the download path for your results.${CYAN}"
;;
7 )
    echo -e "${RED}Exit selected.${NC}"
    exit 0
;;
* )
    echo -e "${RED}Invalid selection.${NC}"
;;
esac

#This section adds a blank line between sentences that begin with the word "In" and then edits the original document to add the changes.
awk '/^In/ {print ""; print $0; next} {print}' "${download_path}/log.txt" > "${download_path}/log_modified.txt"
mv "${download_path}/log_modified.txt" "${download_path}/log.txt"











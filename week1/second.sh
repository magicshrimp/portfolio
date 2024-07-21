#!/bin/bash


read -rp "Hi there! Please Enter your names: " nameOne nameTwo nameThree
unit="CYB6004 Scripting Languages"

echo -e "Hello $nameOne, $nameTwo, $nameThree! Welcome to \n\"$unit\""

read -rsp "What is the secret password: " password

echo "I wont tell anyone"

echo "I lied! Your password was $password!"

exit 0
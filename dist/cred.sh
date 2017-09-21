#!/bin/bash

cd ~/.ling402repo/
echo $(pwd)
echo "The program will save your git credential in home directory."

read -p "Enter a user name: " USERNAME
#read -p -s "Enter a password: " PW
echo -n "Enter a password: "
read -s PW

echo $USERNAME $PW > .git_cred

echo -e "\r"
echo "Credential successfully saved."

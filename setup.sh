#!/bin/bash

echo "Creating hidden repository in home directory..."

mkdir -p ~/.ling402repo

if ! which expect > /dev/null; then
	read -p "The program will install 'expect' on your machine [y/n]: " ans

	if [ $ans == 'y' ] || [ $ans -eq 'Y' ]; then
		sudo apt-get install expect
		echo "The program successfully installed 'expect'. If you want to uninstall, 'sudo apt-get uninstall expect'"
	else
		echo "The program needs to install 'expect'!"
	fi	
fi

./dist/cred.sh

read -p "Do you want the program to be executed everytime you open bash? [y/n]: " var

if [ $var != 'y' ] && [ $var != 'Y' ]; then
	exit
fi

if grep 'export LING' ~/.bashrc > /dev/null; then
	echo "Automated execution already set up."
	exit
fi

dir=$(pwd)

read -p "This script will add Environmental Variable on your machine (.bashrc) [y/n]: " ans

if [ $ans == 'y' ] || [ $ans == 'Y' ]; then
	echo "export LING=$dir" >> ~/.bashrc
	echo "$dir/main.sh" >> ~/.bashrc
fi


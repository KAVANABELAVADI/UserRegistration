#!/bin/bash -x

read -p "Enter User First Name - " firstName
read -p "Enter User Last Name - " lastName
read -p "Enter Email ID - " email
NamePat="^[A-Z]{1}[a-z]{2,6}$"
emailPat="^0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[a-zA-z]{2,4}([.][a-zA-Z]{2}+)*$"

if [[ $firstName =~ $NamePat ]]
then
	if [[ $lastName =~ $NamePat ]]
	then
		if [[ $email =~ $emailPat ]]
		then
			echo "Valid Email ID"
		else
			echo "Enter Valid Email ID"
		fi
	else
		echo "Enter Valid Last Name"
	fi
else
        echo "Enter Valid First Name"
fi

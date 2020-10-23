#!/bin/bash -x

read -p "Enter User First Name - " firstName
read -p "Enter User Last Name - " lastName
NamePat="^[A-Z]{1}[a-z]{2,6}$"

if [[ $firstName =~ $NamePat ]]
then
	if [[ $lastName =~ $NamePat ]]
	then
		echo "Valid Last Name"
	else
		echo "Enter Valid Last Name"
	fi
else
        echo "Enter Valid First Name"
fi

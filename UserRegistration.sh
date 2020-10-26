#!/bin/bash -x

read -p "Enter User First Name - " firstName
read -p "Enter User Last Name - " lastName
read -p "Enter Email ID - " email
read -p "Enter Contact Number with Country Code" phone
read -p "Enter Password - " password


NamePat="^[A-Z]{1}[a-zA-Z]{2,}$"
emailPat="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[a-zA-z]{2,4}([.][a-zA-Z]{3}+)*$"
phonePat="^[0-9]{2}[0-9]{10}$"
pwdPat="(?=^.{8,}$)(?=.*[A-Z])(?=.*[0-9])(?=.*\W+)"

if [[ $firstName =~ $NamePat ]]
then
	if [[ $lastName =~ $NamePat ]]
	then
		if [[ $email =~ $emailPat ]]
		then
			if [[ $phone =~ $phonePat ]]
			then
				if [[ $password =~ $pwdPat ]] 
				then
					echo "You are ready to Register"
				else
					echo "Enter Valid Password"
				fi
			else
				echo "Enter Valid Phone Number"
			fi
		else
			echo "Enter Valid Email ID"
		fi
	else
		echo "Enter Valid Last Name"
	fi
else
        echo "Enter Valid First Name"
fi

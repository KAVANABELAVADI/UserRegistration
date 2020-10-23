#!/bin/bash -x

read -p "Enter user First Name - " firstName

firstNamePat="^[A-Z]{1}[a-z]{2,6}$"

if [[ $firstName =~ $firstNamePat ]]
then
        echo "Valid User First Name"
else
        echo "Enter Valid First Name"
fi

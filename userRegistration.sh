#!/bin/bash -x
NAMEPATTERN="^[A-Z][a-z]{3,}$"

function validation()
{
	if [[ $1 =~ $2 ]]
	then
   	echo "valid"
	else
   	echo "invalid"
	fi

}
//cheking first name is valid or not
read -p "enter first name: " name
validation $name $NAMEPATTERN

//cheking last name is valid or not
read -p "enter last name: " lastName
validation $lastName $NAMEPATTERN


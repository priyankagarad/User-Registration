#!/bin/bash -x

#constant
NAME_PATTERN="^[A-Z][a-z]{3,}$"
EMAIL_PATTERN="^[a-zA-z0-9]{3,}+[@][a-zA-z0-9]{3,}+[.][a-ZA-Z]{2,4}$"
MOBILE_NUMBER_PATTERN="^[0-9]{2}[0-9]{10,10}$"
PASSWORD_MINIMUM_EIGHT_CHARACTER="^[a-z]{8,}"
PASSWORD_CONTAIN_AT_LIST_ONE_UPPERCASE_CHARACTER="^[a-zA-Z0-9]*(.*[A-Z].*{1}+)[a-zA-Z0-9]*{7,40}$"

function validation()
{
	if [[ $1 =~ $2 ]]
	then
   	echo "valid"
	else
   	echo "invalid"
	fi
}
#cheking first name is valid or not
read -p "enter first name: " name
validation $name $NAMEPATTERN

#cheking last name is valid or not
read -p "enter last name: " lastName
validation $lastName $NAMEPATTERN

#checking mailid is valid or not 
read -p "enter email"  email
validation $email $EMAIL_PATTERN

#checking mobile pattern is valid or not
read -p "enter mobile number: " mobileNumber
validation $mobileNumber $MOBILE_NUMBER_PATTERN

#checking password length
read -p "enter password:" password
validation $password $PASSWORD_MINIMUM_EIGHT_CHARACTER

#checking password contain one Uppercase letter
read -p "enter password:" password
validation $password $PASSWORD_CONTAIN_AT_LIST_ONE_UPPERCASE_CHARACTER
